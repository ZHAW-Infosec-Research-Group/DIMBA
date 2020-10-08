# Vulnerabilities in DIBA

This document lists all vulnerabilities that are present in DIBA, including required preparations, the goals that should be achieved to demonstrate successful exploitation, and some helpful hints.

Most of the vulnerabilities are within the app. However, there are also a few vulnerabilities on the server-side. Also the requirements for an attacker to exploit the different vulnerabilities vary. In some cases, the attacker is simply the user of the app, in other cases the attacker must get (temporarily) access to device of another user, sometimes the attacker must control another app on the device of another user, and in a few cases, the attacker even needs root access to the device.

The vulnerabilites are rated as *easy*, *medium* and *hard*, giving an indication for the complexity of exploiting them. This complexity rating reflects the general effort and knowledge (also of helpful tools) required for exploitation. 

### 1: Certificate Check Security

The DIBA server uses a certificate (and corresponding private key) to authenticate itself during the TLS handshake performed between the DIBA app and the DIBA server. This certificate is identified as **DIBA server certificate**. The certificate is issued (signed) by a custom root CA certificate identified as **DIBA CA certificate**. The latter is the one you have to install in the Android trust store (see [README](README.md)) so that DIBA server certificate is considered trustworthy. 

In the Meta Settings, five different levels can be selected that specify the security of the check that is done by the app when verifying the DIBA server certificate received during the TLS handshake. Depending in the level, it is more or less difficult to intercept the network communication between app and server, either as a man in the middle (MITM) or when you are using an interceptor proxy to analyse and/or modify the exchanged data.

- **Level 1**: The certificate is not checked at all. This implies that a MITM or interceptor proxy can use any certificate (and corresponding private key) to intercept network communication.
- **Level 2**: The app checks the identity (subject) of the certificate and whether the certificate has not expired yet. To intercept network communication, one can use any certificate (and corresponding private key) that contains the correct subject and that has not yet expired.
- **Level 3**: This inluces the checks from level 2 and in addition, it is checked that the certificate is signed by any one of the certificates in the Android trust store. To intercept network communication, one needs a certificate (and corresponding private key) signed by any of the certificates in the Android trust store. Alternatively, one can create a certificate using an own root certifcate and install this root certificate in the Android trust store.
- **Level 4**: This includes the checks from level 2 and in addition, it is checked whether the certiticate is signed by the DIBA CA certificate. This means the certificate is pinned to the issuing CA. To intercept network communication, one needs a certificate (and corresponding private key) signed by the DIBA CA certificate.
- **Level 5**: This includes the checks from level 2 and in addition, it is checked whether the certiticate corresponds exactly to the DIBA server certificate. This means the certificate is pinned to the server certificate. To intercept network communication, one needs to use the original DIBA server certificate (and corresponding private key).

### 2: Investments VIP Code (medium)
To do investments, a VIP code is required that can be purchased from the bank. However, due to a vulnerability, it is possible to find out the correct VIP code without having to purchase it.

**Goal:** Find out the valid VIP access code and get access to the Investstments functionality by entering the code.

### 3: Remember Me (hard)
For usabiliy reasons, DIBA provides a *Remember me* functionality so that during the next login, the credentails are already pre-filled. Obviously, these credentials must be stored somewhere on the device and doing this in a secure way is hard.

**Preparation:** Login with email *h@cker* and password *damninsecure* and check the *Remember me* checkbox.

**Goal:** Get the password of *h@cker* from the device assuming you don't know the password.

### 4: SQL Injection (easy)
The *Messages* functionality allows to send and receive messages to/from the bank. The messages are cached locally on the device so that they can be viewed even if there's no network connection. As the app can be used by different users on the same device, messages of multiple users may be cached. Therefore, for confidentiality reasons, a user should only get access to his own messages. Unfortunately, this was not implemented correctly.

**Goal:** Abuse the search field to get access to all messages that were sent and received by other users of the same device. If successful, this should allow to get access to a brief exchange of messages between Alice and Bob.

### 5: Clipboard Danger (easy/medium)
During payment, DIBA allows to load a payment slip from the SD-Card. You can assume that the user receives the payment slip by e-mail from where it can be copied to the SD-Card so it can be imported in DIBA. By selecting *Transfer Payment Slip*, one can copy data from the payment slip (e.g., the recipient) to the corresponding field of the payment using standard the standard Android copy-paste functionality. Assuming an attacker controls another app on the device, he can get access to possibly sensitive payment data copied by the user.

**Goal (easy):** As a proof of concept, try to get access to copied payment data by using any other of the apps available on the Android system.

**Goal (medium):** Develop an app that logs all data that is copied in other apps (which obviously includes payment data copied in the DIBA app).

### 6: Exported Content Provider (medium)
The DIBA app contains an exported content provder that allows to change the app settings. One can assume that this was intentionally added during development so that settings can easily be changed using a separate app, but it was forgotten to remove this before publishing the app.

**Goal:** Develop an app that allows to set at least one of the DIBA app settings.

### 7: Intent Redirection (hard)
In the settings, the developers forgot to remove a debugging setting that allows specifying the activity that is used to confirm a payment. Per default, this is set to the payment confirmation activity of the DIBA app and therefore, everything works as intended. However, the values can be changed so they point to a another activity in another app and because of vulnerability 6, the settings can not only be changed within the DIBA app, but also by another app on the same device. Overall, this means that an attacker, assuming he controls an app on the device, can interfere with the payment data that is sent (in an intent) from the *Make a Payment* activity to the *Accept the Payment* activity.

**Goal:** Develop an app that provides an activity that can receive the intent sent from the *Make a Payment* activity, that canges the recipient of a payment to *attacker@mail.com*, and that forwards the modified intent to the *Accept the Payment* activity. When tapping on *Show Details*, you should then see the modified payment data.

### 8: Logging Sensitive Information (easy)
Apps should never log sensitive data as this unnecessarily exposes this data so an attacker can possibly access it. The DIBA app, unfortunately, logs a lot of sensitive information to the central Android logging facility, probably as a leftover from development. If an attacker gets access to your device, he can use adb to get access to the logged data.

**Goal:** Get access to logged credentials (email and password).

### 9: Exported Activity Alias (easy/medium)
The activity to view the investments in not exported. However, there's an alias for this activity, which is exported, and as a result of this, the original activity also gets exported. This means that it can be directly accessed without following the user interface of the app, i.e., without logging in. 

**Goal (easy):** Without being logged into the DIBA app, use adb to directly start and access the activity to view the investments.

**Goal (medium):** Develop an app that starts the investment activity without being logged into the DIBA app.

**Remark**: Note that in this case, assming an attacker gets temporary access to the device of a DIBA user that is currently not logged is not really beneficial as no investments will be shown. However, there are certainly apps where such a vulnerability may provide access to more interesting functionality or data and the main intention of the vulnerability is to demonstrate that an activity can be unintentionally made exportable if the developer uses activity aliases in a wrong way.

### 10: Directory Traversal I - Read (easy)
During payment, DIBA allows to load a payment slip from the SD-Card. This is implemented in an insecure way that allows to read the content of any file that is accessible by the permissions of the running DIBA app. If an attacker gets (temporarily) access to your device, this may allow him to access sensitive information.

**Goal:** Abuse this functionality to get access to the content of the file *loginPreferences.xml* in the shared preferences of the DIBA app.

### 11: Directory Traversal II - Read/Write (easy)
During payment, DIBA allows to load/save a payment slip from/to the SD-Card. This is implemented in an insecure way that allows you to read and write the content of any file that is accessible by the permissions of the running DIBA app. This may allow a user to change settings of the app in a way as it was not intended by the app developers.

**Goal:** Abuse this functionality to first read the contents of the file *ch.zhaw.securitylab.DIBA_preferences.xml* in the shared preferences of the DIBA app. The next steps depend on whethter you already have access to make investments (via the VIP code):
* In case you don't have access to make investments yet, add the entry *\<boolean name="VIP" value="true" />* to the *map* element and overwrite the file with the new content. This should grant you access to make investments after restarting the app.
* If you already have access to make investments, then remove the entry *\<boolean name="VIP" value="true" />* from the *map* element and overwrite the file with the new content. As a result of this, you no longer should have access to make investments after restarting the app.

### 12: Directory Traversal III - Read/Write (easy)
This uses the same vulnerability as vulnerability 11 and is only intended to show that data can also be copied to locations so it can be access by other apps.

**Goal:** Abuse the load/save payment slip functionality to copy any file from the shared preferences to the SD-Card. Once this has been done, check (e.g., using adb) whether the file was indeed copied to the SD-Card.

### 13: Weak Report Encryption (hard)
At the top right of the *Home* screen, thers's a bug-shaped button. Clicking this button creates a report that contains sensitive information. Due to this sensitive information, the report is encrypted before it is stored on the SD-Card. From there, the user can send it to the DIBA bank, e.g., by mail.

**Goal:** Find out the encryption scheme and the key that is used to encrypt the bug report. Then, use this information to decrypt the report.

### 14: JWT Validity (easy)
If login is successful, the DIBA server sends a JSON Web Token (JWT) to the app, which is then included in every subsequent request by the app to link the request to the authenticated user. While JWTs in general are considered secure assuming they are used correctly, it's also possible to use them in an insecure way - which is what happened in DIBA.

**Goal:** Get a JWT (e.g., by using an interceptor proxy) and analyze it's content (e.g., by using https://jwt.io). Identify one major problem with the content of the token and what the security implications are.

### 15: Recently Used Apps (easy)
In Android, when displaying the currently running apps, screenshots are displayed that are taken when an app leaves the foreground. These screenshots are stored somewhere in the system, which potentially exposes them to attackers. As the DIBA app sometimes shows sensitive information, it was implemented so that no screenshot is taken when it leaves the foreground. As a result of this, no details are shown when viewing the currently running apps. However, in some places of the DIBA app, this was forgotten. 

**Goal:** Find two screens with possibly sensitive information where screenshots are taken when the app leaves the foreground in the sense that the screenshots are shown when displaying the currently running apps.

### 16: Back Stack Clearing (easy)
Usually, the back button shows the previously used screen. This can be security critical in some situation. E.g., in the DIBA app, after a user has logged out, it should not be possible to use the back button to get access to previously used screens as they may reveal sensitive information to another user who gets access to the device. The DIBA app has two log out functionalitis, one via the menu on the top left and the other via the home screen. Only one of them is implemented in a secure way.

**Goal:** Find a way such that - after logging out - sensitive information can be accessed by using the back button.

### 17: Payment Input Validation (easy)
When doing a payment, the amount can only be entered as a positive number. However, there's a vulnerability that allows you to make payemnts with negative amounts, which will increase your balance.

**Goal:** Make a payment that uses a negative amount so the balance of your account is increased accordingly.

### 18: Developer Entrance (medium)
As a leftover from development to make testing easier, a backdoor was added to the login screen that allows to tap on the DIBA logo to get access to the authenticated area without having to log in. The developers deactivated the backdoor, but it was simply deactivated using a flag in the code and the actual code was left in. This means an attacker can easily reactivate the backdoor.

**Goal:** Adapt the app so that the backdoor is working again so the logo can be tapped to enter the authenticated are.

**Hint:** To do this, you have to decompile the app using *apktool*, adapt a specific setting, recompile the code again using *apktool* and sign it with *jarsigner*.

**Remark**: Of course, being in the authenticated area of the app without having logged in (and having received a JWT) does not really provide access to sensitive information. Therefore, this vulnerability mainly serves to demonstrate how easy it is to re-activate code that was "deactivated" by the developers with a simpkle setting. And also, an attacker can of course always adapt the code to add functionality at will (in this case, getting directly to the authenticated area), but in that case, he has at least adapt the code of the app, whoch can be made more difficult using code obfuscation. 

### 19: App Backup (medium)
In the file *AndroidManifest.xml* that is part of every app, the developer can specify whether backups via adb are allowed. In the case of the DIBA apps, backups are permitted. This is convenient, but introduces risks, as it allows the user to easily change some setting that shouldn't directly be accessible to the user and if an attacker manages to get access to a backup, he may get access to sensitive information.

**Goal:** Do a backup of the DIBA app via adb and inspect the backed up data to learn what it contains in general and whether it contains sensitive data.

### 20: Fragment Injection (medium)
The screens for login and account creation are similar in structure. To make things a bit easier, the developer therefore decided to use a fragment activity to implement this. This means the activity can be started with an argument that specifies the fragment to be loaded. However, as the activity is exported, this implies that an attacker can start this activity as well while specifying any fragment that is part of the app. If this fragment should only be accessible in the authenticated patr of the app, an attacker may get access to information and functionality that shouldn't be accessible to him.

**Goal:** Use adb to directly start the fragment activity while specifying that the fragment with the name *FragmantChange* should be used (this fragment only exists to be used in a proof of concept to exploit the vulnerability). As a result, you should see a fragment with four buttons with the label *Change later*. As an optional step, instead of using adb, you can also develop an app that starts the fragment activity.

**Remark**: Similar as with vulnerability 9, the attack as demonstrated here is not really beneficial as there are no interesting fragment to be accessed. However, there are certainly apps where such a vulnerability may provide access to more interesting functionality or data and the main intention of the vulnerability is to demonstrate that fragment injection is possible, if the fragment activity is exported.

### 21: Insecure Service (medium)
DIBA uses a service to modify currency exchange rates. As this service is exported, it can be used by any other app on the same device. 

**Goal:** Develop an app that uses the service to modify the exchange rates to any values you like. You can inspect the *currencyPreferences.xml* in the shared preferences of the DIBA app to check whether the attack worked.

### 22: Weak JWT MAC Secret (medium)
The JSON Web Token (JWT) that is created by the DIBA server uses a weak secret for the MAC. If an attacker manages to find this secret, he can create valid JWTs for DIBA.

**Goal:** Get a JWT (e.g., by using an intercepor proxy) and crack the MAC password.

### 23: Exploiting Someone Elses Stored Login Credentials (easy)
The DIBA app allows to store the credentials using the *Remember Me* functionality. This directly implies that if a user stores the credentials and if an attacker gets access to the device, the attacker can log in and can use the app with the identity of the user.

**Goal:** Log in using the credentials that have been entered and stored before (using the *Remember Me* functionality) and use the app with identity of the corresponding user. Obviously, this is trivial to do.

### 24: SQLite Database (medium)
Android apps can use internal SQlite databases. The DIBA app, for instance, uses such a database to store the made inbvestments for convenience so that they do not have to be read from the server whenever the user wants to view the made investments. If an attacker gets access to the device, however, he can get the database and read its potentially sensitive content.

**Preparation:** Make at least one investment so that the database contains some content.

**Goal:** Get access to the database that stores the investments and list the made investments.

### 25: Native Language Library (hard)
Vulnerability 26 (Encrypted SQLite Database) uses an encrypted database to locally store the made payments. The key that used for encryption is hidden in the app, in a native language library.

**Goal:** Find the key. When solving vulnerability 26, you'll learn whether you have found the right key.

### 26: Encrypted SQLite Database (hard)
Just like with investments (see vulnerability 25), a local database is also used to store the made payments. This time, the developers tried to come up with a more secure solution by encrypting the database with a key hidden in the app. However, assuming an attacker finds this key and gets access to the device, he can still get the database and read its potentially sensitive content.

**Preparation:** Make at least one payment so that the database contains some content. Also, first exploit vulnerability 26 to get the hidden key.

**Goal:** Get access to the database that stores the paymants and list the made payments by using the correct key.

**Hint:** In the DIBA app, encryption of the payment database is done using [SQLCipher](https://www.zetetic.net/sqlcipher/). Note that this vulnerability is not because a problem of SQLCipher, but because the attacker can get access to the encryption key.

### 27: WebView Cross-Site Scripting (medium)
The DIBA app provides a survey to banking customers so they can provide some feedback. This survey is implemented using a WebView that contains a stored Cross-Site Scripting (XSS) vulnerability.

**Goal:** Exploit the vulnerability so that whenever a user opens the survey screen, his IBAN (which is included at the top of the screen) is sent in a request to a host controlled by the attacker.

**Hint:** An easy way to capture request is by using [PostBin](https://postb.in).

### 28: Cracking Weak Password (hard)

To get access to stock market data, an access code must be entered. Due to a vulnerability, it is possible to find out the correct code.

**Goal:** Find out the correct access code and get access to the stock matket functionality by entering the code.

**Hint:** The code is based on a common word and additionally uses letter capitalization and digits.

### 29: Root Detection Bypass (hard)
The DIBA app cointains a simple root detection mechanism. Whenever the app is started, it checks whether the Android device is rooted and displays a message if this is the case. In reality, the app would be now terminated to prevent its usage on rooted (and therefore less secure) devices. However, as a user has full control over the app, he can adapt it by removing the root detection check and as a result of this, the app can also be used on rooted devices.

**Preparation:** In the meta settings, uncheck the *Disable" checkbox under "Root Detection* so that root detection is enabled. Restart the app and you should now see a message that a rooted device is detected.

**Goal:** Adapt the app and remove the rooted detection check. As a result of this, the message after starting the app should say *Device Okay!*.

**Hint:** To do this, you have to decompile the app using *apktool*, adapt the code, recompile the app again using *apktool* and sign it with *jarsigner*.

### 30: Local Command Injection (easy)
In the Meta-Settings, there's a *Ping* functionality to ping the server using the configured IP address. This uses the *ping* command in the Android operating system. The output of the ping command can be seen in the Android log. This functionality contains a command injection vulnerability that allows an attacker to execute arbitrary command in the Android system.

**Goal:** Exploit the vulnerability so that the content of the file *loginPreferences.xml* in shared preferences of the DIBA app is written to the Android log.

### 31: Two-Factor Authentication I - Replaying Codes (easy)
To confirm a payment, the user gets a payment confirmation code by SMS. Note that the SMS is simulated and written to the server output. This code is generated and used in an insecure way. A first problem is that it is not bound to a specific payment and that it can be used for multiple payments until it expires (which is after 5 minutes) - so it's not a one time confirmation code as it is supposed to be. This means that, e.g., a MITM can wait until the user has made and confirmed one payment. Based on this, the MITM can then make several additional payments using this code while the code is valid.

**Goal:** Act as a MITM using an interceptor proxy. Do a payment as the user of the app and learn (as the MITM) the payment confirmation code. Then, do another payment as the MITM by replaying the two original requests that were used during the payment, but change both the payment amount and the recipient of the payment in both requests. Use the payment confirmation code you observed. The payment should be accepted by the server. You can verify successful exploitation by comparing the account balance before and after the payment.

### 32: Two-Factor Authentication II - Code not Bound to Payment (easy)
Assume that the confirmation code can be used only once to confirm a payment (that's not the case, see vulnerability 31, but let's assume here it can only be used once). But it's still not bound to a specific payment. Try to exploit this by changing - as a MITM -  both the payment recipient and the payment amount that was originally entered by the user so that the payment with the changed amount and to a different recipient is executed. Note that the SMS message must appear harmless to the user, i.e., it must contain the originally entered payment amount and recipient.

**Goal:** Exploit the vulnerability by successfully modifying a payment so that the payment amount is larger than originally entered by the user and that the payment goes to a different recipient. You can verify successful exploitation by comparing the account balance before and after the payment.

### 33: Two-Factor Authentication III - Weak Code Generation (medium)
Confirmation codes should be random so an attacker cannot predict them. In the case of DIBA, however, they are not really created in a random way, although they appear to be quite random when looking at them.

**Goal:** Crack the confirmation code generation algorithm. If you think you have cracked it, enter the confirmation code that would be used at 2030-01-31 12:00:00 in the code field and accept the payment. If the payment is accepted, you have successfully cracked the code generation algorithm.

**Hint:** Code generation is based on a hash function.
