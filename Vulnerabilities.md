# Vulnerabilities in DIBA
## What is DIBA?
At the core DIBA is a vulnerable Banking App that was designed to provide a realistic training ground for Android Penetration Testing.
There are already a number of other intentionally vulnerable Android App projects out there (eg. [DIVA](https://github.com/payatu/diva-android) or [InsecureBankV2](https://github.com/dineshshetty/Android-InsecureBankv2)), however either they are no longer maintained or they are not up to date with the current Android Design Guidelines.

## Features
This project is split into two parts. The first part is the Banking App itself which provides the following features:
+ A number of activities that are typical for a banking app, such as:
	+ login screen
	+ register for the service
	+ account balance view
	+ sending and receiving payments
	+ loading a payslip from a file
	+ investment area (separated by an additional paywall)
	+ live-view on stock market
	+ sending and receiving messages
+ Modern look and feel thanks to Material Design
+ Plenty of vulnerabilities to discover, currently there are 24 vulnerabilities to find
+ Metasettings that make it harder to crack some vulnerabilities
