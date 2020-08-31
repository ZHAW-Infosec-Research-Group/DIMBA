# Vulnerabilities in DIBA

This document lists all vulnerabilities that are present in DIBA, including required preparations, the goals that should be achieved to demonstrate successful exploitation, and some helpful hints.

### General issues

Metasettings: Use LEVEL 1 etc, not LEVEL_1

Use "Certificate Ckeck Security" instead of "Security of Certificate Check"

Ping Server does not do anything

Courier Font in Buttons still looks a bit strange

The font is very "light-grey", shpuld be darker

In the Meta-Settings, there's "Meta settings" written at the top roght. This is not needed.








### 1: Investments for free (easy)
To do investments, a VIP access code is required that can be purchased from the bank. However, due to a vulnerability, it is possible to find out the correct access code without having to purchase it.

**Goal:** Find out the valid VIP access code and get access to the Investstments functionality by entering the code.

### 2: Don't forget me (medium)
For usabiliy reasons, DIBA provides a *Remember me* functionality so that during the next login, the credentails are already pre-filled. Obviously, these credentials must be stored somewhere on the device and doing this in a secure way is very hard.

**Preparation:** Login with email *h@cker* and password *damninsecure* and check the *Remember me* checkbox.

**Goal:** Get the password of *h@cker* from the device assuming you don't know it.

### 3: SQL injection only happens server-side, right? (easy)
The *Messages* functionality allows to send and receive messages to/from the bank. The messages are cached locally on the device so that they can be viewed even if there's no network connection. As the app can be used by different users on the same device, messages of multiple users may be cached. Therefore, for configentiality reasons, a user should only get access to his own messages. Unfortunately, this was not implemented correctly.

**Goal:** Abuse the search field to get access to messages of other users on the same device.
