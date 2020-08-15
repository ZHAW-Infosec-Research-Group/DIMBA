// IMyAidlInterface.aidl
 package ch.zhaw.securitylab.DIBA;

 // Declare any non-default types here with import statements

 interface AidlServiceCurrencyExchange {
     String getAmountInSfr(String amount, String currency);
     String[] getCurrencies();
     String getSfrString();
     void changeExchangeRate(String exchangeRate, String currency);
 }