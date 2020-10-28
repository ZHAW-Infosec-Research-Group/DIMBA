package ch.zhaw.securitylab.dimba.server.controllers;

import ch.zhaw.securitylab.dimba.server.Server;
import ch.zhaw.securitylab.dimba.server.MySQLHelper;
import ch.zhaw.securitylab.dimba.server.user.Payment;
import ch.zhaw.securitylab.dimba.server.user.User;
import ch.zhaw.securitylab.dimba.server.util.UtilGson;
import io.javalin.http.Handler;

import java.math.BigDecimal;
import java.util.List;

import static ch.zhaw.securitylab.dimba.server.util.Decode.encode;
import static ch.zhaw.securitylab.dimba.server.util.Decode.fetch;
import static ch.zhaw.securitylab.dimba.server.util.Decode.fetchJSON;
import ch.zhaw.securitylab.dimba.server.responses.StringResponse;
import ch.zhaw.securitylab.dimba.server.responses.PaymentResponse;

public class ControllerPayment extends ControllerParent {

	public static Handler handlePayment = context -> {
		// Get user
		User userSender = getUser(context);
		
		Server.logger.info("Payment, init payment");
		
		// Fetch payment fields
		String owner        = fetchJSON(context, "owner");
		String target       = fetchJSON(context, "target");
		String amountString = fetchJSON(context, "amount");
		String amountSFr    = fetchJSON(context, "amountSFr");
		String currency     = fetchJSON(context, "currency");
		String code         = fetchJSON(context, "OTP");

		if (isNull(owner, target, amountString, amountSFr, currency) || !ControllerUser.get().isValidCode(code)) {
			StringResponse sRes = new StringResponse("Request format wrong!");
			context.json(sRes);
			context.status(400);
			return;
		}
		
		// Check enough money for investment
		BigDecimal amount = new BigDecimal(amountSFr);
		BigDecimal amountBalance = userSender.getBalance();
		
		if (amount.compareTo(amountBalance) > 0) {
			Server.logger.info("Payment, not enough money");
			StringResponse sRes = new StringResponse("Not enough money!");
			context.json(sRes);
			context.status(400);
			return;
		}
		
		// Add new payment
		Payment payment = new Payment(owner, target, new BigDecimal(amountString), amount, currency);
		MySQLHelper.add_payment(payment);

		userSender.addPayment(payment);
		// Subtract payment amount
		userSender.subtractBalance(amount);
		
		// Add amount to balance if found
		User userSendee = ControllerUser.get().getUser(target);
		if (userSendee != null) userSendee.addBalance(amount);
		
		Server.logger.info("Payment, worked fine");
		StringResponse sRes = new StringResponse("payment worked");
		context.json(sRes);
		context.status(200);
	};
	
	public static Handler handlePaymentList = context -> {
		// Fetch user & payments
		User user = getUser(context);
		//List<Payment> payments = user.getPayments();
		List<Payment> payments = MySQLHelper.get_payments(user.getEmail());
		
		PaymentResponse pRes = new PaymentResponse(payments);
		context.json(pRes);
		context.status(200);
	};
}
