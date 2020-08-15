package ch.zhaw.securitylab.inbank.server.controllers;

import ch.zhaw.securitylab.inbank.server.Server;
import ch.zhaw.securitylab.inbank.server.MySQLHelper;
import ch.zhaw.securitylab.inbank.server.user.Investment;
import ch.zhaw.securitylab.inbank.server.user.User;
import ch.zhaw.securitylab.inbank.server.util.UtilGson;
import io.javalin.http.Handler;

import java.math.BigDecimal;
import java.util.List;
import java.sql.Connection;

import static ch.zhaw.securitylab.inbank.server.util.Decode.fetch;
import static ch.zhaw.securitylab.inbank.server.util.Decode.fetchJSON;
import ch.zhaw.securitylab.inbank.server.responses.StringResponse;
import ch.zhaw.securitylab.inbank.server.responses.ListResponse;

public class ControllerInvestment extends ControllerParent {

	public static Handler handleInvestment = context -> {
		Server.logger.info("Investments started");
		// Get User
		User user = getUser(context);
		
		// Fetch investment fields
		String owner      = fetchJSON(context,"owner");
		String dateString = fetchJSON(context,"date");
		String amount     = fetchJSON(context,"amount");
		String amountSFr  = fetchJSON(context,"amountSFr");
		String currency   = fetchJSON(context,"currency");
		if (isNull(owner, dateString, amount, amountSFr, currency)) {
			Server.logger.info("Invest failed");
			StringResponse sRes = new StringResponse("Request format wrong!");
			context.json(sRes);
			context.status(400);
			return;
		}
		
		// Check enough money for investment
		BigDecimal amountInvest = new BigDecimal(amount);
		BigDecimal amountBalance = user.getBalance();
		if (amountInvest.compareTo(amountBalance) > 0) {
			Server.logger.info("Invest, not enough money");
			StringResponse sRes = new StringResponse("Not enough money!");
			context.json(sRes);
			context.status(400);
			return;
		}
		
		// Add new investment
		long date = Long.parseLong(dateString);
		Investment investment = new Investment(owner, date, amount, amountSFr, currency);
		MySQLHelper.add_investment(investment);
	
		user.addInvestment(investment);
		user.subtractBalance(new BigDecimal(amount));
		
		Server.logger.info("invest worked");
		StringResponse sRes = new StringResponse("invest worked");
		context.json(sRes);
		context.status(200);
	};
	
	public static Handler handleInvestmentList = context -> {
		// Fetch user & investments
		User user = getUser(context);
		//List<Investment> investments = user.getInvestments();
		List<Investment> investments = MySQLHelper.get_investments(user.getEmail());

		ListResponse lRes = new ListResponse(investments);
		context.json(lRes);
		context.status(200);
	};
}
