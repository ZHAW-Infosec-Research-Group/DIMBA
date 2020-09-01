# Vulnerabilities in DIBA

This document lists all vulnerabilities that are present in DIBA, including required preparations, the goals that should be achieved to demonstrate successful exploitation, and some helpful hints.

### General issues

Only Level 1 works right now. With Burp, no level works.

Metasettings: Use LEVEL 1 etc, not LEVEL_1

Use "Certificate Ckeck Security" instead of "Security of Certificate Check"

Ping Server does not do anything

Courier Font in Buttons still looks a bit strange

The font is very "light-grey", should be darker

In the Meta-Settings, there's "Meta settings" written at the top roght. This is not needed.

Make sure to adapt thje text in "About App".

On the screen with Login & Create ACcount, the logo should be mor centered above the buttons.

No Logo on the Main screen (The one with Fetch Balance) etc.

### 1: Certificate Check Security

The DIBA server used a certificate (and corresponding private key) to authenticate itself during the TLS handshake performed between the DIBA app and the DIBA server. This certificate is identified as **DIBA server certificate**. The certificate is issued (signed) by a custom root CA certificate identified as **DIBA CA certificate**. The latter is the one you have to install in the Android trust store (see [README](README.md)) so that DIBA server certificate is considered trustworthy. 

In the Meta-Settings, five different levels can be selected that specify the security of the check that is done by the app when verifying the DIBA server certificate received during the TLS handshake. Depending in the level, it is more or less difficult to intercept the network communication between app and server, either as a man in the middle (MITM) or when you are using an interceptor proxy to analyse and/or modify the exchanged data.

- **Level 1**: The certificate is not checked at all. This implies that a MITM or interceptor proxy can use any certificate (and corresponding private key) to intercept network communication.
- **Level 2**: The app checks the identity (subject) of the certificate and whether the certificate has not expired yet. To intercept network communication, one can use any certificate (and corresponding private key) that contains the correct subject and that has not yet expired.
- **Level 3**: This inluces the checks from level 2 and in addition, it is checked that the certificate is signed by any one of the certificates in the Android trust store. To intercept network communication, one needs a certificate (and corresponding private key) signed by any of the certificates in the Android trust store. Alternatively, one can create a certificate using an own root certifcate and install this root certificate in the Android trust store.
- **Level 4**: This includes the checks from level 3 and in addition, it is checked whether the certiticate is signed by the DIBA CA certificate. This means the certificate is pinned to the issuing CA. To intercept network communication, one needs a certificate (and corresponding private key) signed by the DIBA CA certificate.
- **Level 5**: This includes the checks from level 3 and in addition, it is checked whether the certiticate corresponds exactly to the DIBA server certificate. This means the certificate is pinned to the server certificate. To intercept network communication, one needs to use the original DIBA server certificate (and corresponding private key).

**Check**: TBD

### 2: Investments for Free (easy)
To do investments, a VIP access code is required that can be purchased from the bank. However, due to a vulnerability, it is possible to find out the correct access code without having to purchase it.

**Goal:** Find out the valid VIP access code and get access to the Investstments functionality by entering the code.

**Check**: Works, but old solution description seems to be overly complicated.

### 3: Remember Me (medium)
For usabiliy reasons, DIBA provides a *Remember me* functionality so that during the next login, the credentails are already pre-filled. Obviously, these credentials must be stored somewhere on the device and doing this in a secure way is very hard.

**Preparation:** Login with email *h@cker* and password *damninsecure* and check the *Remember me* checkbox.

**Goal:** Get the password of *h@cker* from the device assuming you don't know it.

**Check**: Works.

### 4: SQL Injection (easy)
The *Messages* functionality allows to send and receive messages to/from the bank. The messages are cached locally on the device so that they can be viewed even if there's no network connection. As the app can be used by different users on the same device, messages of multiple users may be cached. Therefore, for confidentiality reasons, a user should only get access to his own messages. Unfortunately, this was not implemented correctly.

**Goal:** Abuse the search field to get access to messages of other users on the same device.

**Check**: Works, but The five predefined messages should by form sender (Alice, right side) and from bank /Bob, left side).
Also, formatting is not good.

### 5: Clipboard Danger (easy/medium)
DIBA allows to load a payment slip from the SD-Card. You can assume that the user receives the payment slip by e-mail from where it can be copied to the SD-Card so it can be imported in DIBA. By selecting *Transfer Payment Slip*, one can copy data from the payment slip (e.g., the recipient) to the corresponding field of the payment using standard the standard Android copy-paste functionality. Assuming an attacker controls another app on the device, he can get access to possibly sensitive payment data copied by the user.

**Goal (easy):** As a proof of concept, try to get access to copied payment data by using any other of the apps available on the Android system.

**Goal (medium):** Develop an app that logs all data that is copied in other apps (which obviously includes copied payment data).

**Check**: Works, replace Payslip => Payment Slip

### 6: Default exported content provider

Works (tested via AUTO REDIRECT in Exploit App)

### 7: Intent redirection

TBD

### 8: Loggiong Sensitive Information

Works

### 9: Aliases export activities

Works

But does this make sense? If the user is niot logged in, I'm not getting any inbestments. And if the user i slogged, I can simply access the investments by using the app.

### 10: Directoty Traversal I - Load a Payslip

Works

Shouldn't the Load/Save Icons be swapped?

### 11: Directory Traversal I - Save a Payslip

Works

### 12: Save on SD card

Works

### 13: Weak Report Encryption

Report is generated, decryption test TBD

### 14: Login Mimic

TBD, needs proxy

### 15: Recently Used Apps

Works

But is this reasonable? If I have access to the phone, I can simply navigate to that activity?

### 16:

This number is missing from the soplution chapter => not existing (?)

### 17: Back button log clearing

Works

Sequence: Login - Payments - Home - Log-out/Side Drawer - back - back => PAYMENTS!

Does not work woth Log out button on home screen

### 18: Input validate in make paymemnt activity

TBD with Burp

### 19: Developer entrance

TBD

### 20: App backup

Works

### 21: Fragment injection

TBD

### 22: Insecure services

TBD

### 23: Weak JWT MAC password

Works, check available JWT crackers

Use a simpler password

Replace iss "InBank" with "DIBA"

### 24: Exploitimg saved forign login credentials

Works

### 25: SQLite Database

Works

### 26: Native language library

Works

### 27: Encrypted AQLite database

Could not test as I couldn't buils SQLCipher

### 28: WebView XSS

Couldn't do this one. How can I access the survey at any time?

### 29: Cracking Weak Password

Uses no salt, roght?

What is the correct password?

### 30: Root detection bypass

TBD

### 31: System command injection

Works

But this means the meta ssettings are now exploitable, so the entry "Non-attackable screens" is no lomger correct.


### 32: 2-Factor authentication

Works

The payment message (with the code) should also include the timestanp, the target account and the amount.

### 33: 2-Factor authentication modify payment data

TBD, as soon as Burp works








