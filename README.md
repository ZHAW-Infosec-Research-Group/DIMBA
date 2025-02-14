# DIMBA - Damn Insecure Mobile Banking App

## What is DIMBA?
DIMBA is an intentionally vulnerable banking app that was designed to provide a realistic training ground for Android penetration testing and to learn in general about different things that can go wrong in apps with respect to security. Two main properties of DIMBA are that it provides a simplified but still somewhat realistic banking scenario and that it contains a wide range of different vulnerabilities. 

## Features
This project is split into two parts. The first part is the DIMBA app itself which provides the following features:
+ A number of activities that are typical for a banking app, such as login screen, registering for the service, account balance view, doing payments, loading a payment slip from a file, investment area, live-view of stock market, and sending and receiving messages.
+ Modern look and feel thanks to Material Design.
+ Plenty of vulnerabilities to discover, currently there are 33 vulnerabilities to find.

The second part is the DIMBA server with which the DIMBA app communicates. For the training app to be realistic such a component needs to exist since most apps nowadays make use of a backend to implement most of the business logic and only use the app as a presentation layer. The DIMBA server provides the following features:
+ REST API
+ An integrated database for persisting transactions/activities during training sessions
+ Authentication via JSON Web Tokens (JWT)
+ SMS message with confirmation code that must be entered by the app user to authorize a payment. Note that the SMS message is simulated and written to the server output.

You can use DIMBA in two ways. One way is to simply use and analyse the app with the goal to find vulnerabilities. Alternatively, you can use [Vulnerabilities.md](Vulnerabilities.md), which provides some guidance for all the vulnerabilities and corresponding exploitation goals to achieve.

The full source code is made available here. But to simulate a realistic setting, you should not look at the source code of the app or the server and you should consider the server as a black-box component (i.e., you can interact with it over the network but otherwise, it's out of reach for you). There's also an exploit app available which can exploit some of the vulernerabilities, but this should also not be used in a realistic setting (but you are invited to develop such an app on your own). So ideally, assume that only the APK file of the DIMBA app is directly available to you and that you can communicate with the server in a black-box manner when trying to find and exploit vulnerabilities.

## Usage
### Prerequisites
To run the app and the server, the following is required:
+ Latest release of DIMBA app and server. Download it (https://github.com/ZHAW-Infosec-Research-Group/DIMBA/releases/download/v1.3/DIMBA.zip) and unzip the downloaded file *DIMBA.zip*, which results in a directory *DIMBA*.
+ Android Debug Bridge (adb)
+ Java runtime environment (Java 8 or higher)
+ An Android device or a virtual machine running Android

For finding and exploiting the vulnerabilities you probably need a bunch of tools:
+ [Apktool](https://ibotpeaches.github.io/Apktool/)
+ [Jadx](https://github.com/skylot/jadx)
+ [Android Backup Extractor](https://github.com/nelenkov/android-backup-extractor)
+ An interceptor proxy of your choice, e.g., [Burp Suite](https://portswigger.net/burp) or [OWASP ZAP](https://owasp.org/www-project-zap/).

There are different ways to run DIMBA. The following description assumes that the DIMBA server is run on your physical host and that the DIMBA app is is run within an Android virtual machine. This should work without any problems with most common operating systems (e.g., Windows, macOS, Linux) and does not require a physical Android device. Also, it provides root access to the device, which is needed or helpful to exploit some vulnerabilities. Based on the following description, it should also be possible to derive the required set up steps in case you are planning to use DIMBA in another way. In general, only use a physical Android device if you really know what you are doing to avoid negative side effects.

### Android Virtual Machine Setup
The following steps describe how to run Android as a virtual machine using VirtualBox. It should also be possible to use different virtualization software such as VmWare:
1. Get the Android VirtualBox image **Android-x86 9.0-R2 Pie** (64bit version) from [OSBoxes](https://www.osboxes.org/android-x86/). More recent versions may also work, but this is the version with which the app was successfully tested.
2. Get and install [VirtualBox](https://www.virtualbox.org) if you don't have it already.
3. In VirtualBox, create a new virtual machine and switch to Expert Mode.
4. Choose a name, select the OS type as **Other** and the version as **Other/Unknown (64bit)**.
6. Select **Use an existing virtual hard disk file** and select the vdi file you just downloaded.
7. Press **Create**.
8. Right click on the new instance and select **Settings -> Network -> Advanced -> Port Forwarding**.
9. Add a new Rule with Protocol: TCP; Host IP: leave empty; Host Port: 5555; Guest IP: leave empty; Guest Port: 5555.

To make it easier to work with the virtual machine, it is recommended to activate the **Stay awake** option in the developer settings. To enable this, follow these steps:
1. Start the virtual machine.
2. Open the **Settings** app.
3. Select **System -> About Tablet**.
4. Click seven times on the build number to enable the developer settings.
5. Go one step back to the **System** settings, select **Advanced -> Developer option** and enable **Stay awake**.

### DIMBA Server
To run the DIMBA server, change to directory *DIMBA/DIMBA_Server* and execute the following command:

``` java -jar DIMBA_server.jar ```

### DIMBA App Installation
To install the DIMBA app on the Android virtual machine, do the following:
1. Check if adb is connected with your device by running the following command: `adb devices`
2. If it is not connected you can establish a connection by running the command: `adb connect 127.0.0.1:5555`
3. Now you can install the APK by executing the following command: `adb install DIMBA/DIMBA_app/DIMBA.apk` 
4. Copy the DIMBA CA root certificate to the Android virtual machine by using the following adb command: `adb push DIMBA/DIMBA_server/keystore/certificates/DIMBA_CA.pem /sdcard`
5. Install the certificate on your device. To do this, open the **Settings** app and select **Security & location -> Encryption & credentials -> Install from SD card** There select DIMBA\_CA.pem to install it. You will also have to select a screen lock; it's easiest to do this with a simple PIN.
6. To verify that the certificate is installed, open **Security & location -> Encryption & credentials -> Trusted credentials**. 

### DIMBA App Configuration
1. Open the DIMBA app.
2. Open the meta settings via the menu at the top left.
3. Change the IP address of the server to IP address of your physical host (assuming the server is running on your host).
4. Change the communication difficulty to the difficulty of your choice.

### Intercepting Network Communication
To understand and exploit some vulnerabilities, access to the communication between app and server is required. This works best using an interceptor proxy. To do this, perform the following steps:
1. On your physical host (where the DIMBA server is running), use an interceptor proxy such as [Burp Suite](https://portswigger.net/burp), [OWASP ZAP](https://owasp.org/www-project-zap/) or some other tool.
2. Make sure the interceptor proxy listens for incoming connections on the external IP address of your host and chek the port that it uses (often something like 8008 or 8080). (Note: For security reasons, make sure that the local firewall blocks access to this port from the external network.)
3. Configure the Android device to use the interceptor proxy. In the case of the Android virtual machine, this works according to steps 4-6.
4. Open the **Settings** app, select **Network & internet**, then **WiFi** and then **VirtWifi**.
5. Next, select the pen icon at the top right and expand **Advanced options**.
6. Here, specify **Proxy -> Manual**, enter the IP address of your physical host in the **Proxy hostname** field and the port used by your interceptor proxy in the **Proxy port** field. Finally, make sure to save the settings.
7. When using the interceptor proxy, it's easiest to use certificate check security **LEVEL 1** in the meta settings of the app to prevent problems. If you need a bit of a challenge, you can also use the higher levels (for more information about these levels: see vulnerability 1 in [Vulnerabilities.md](Vulnerabilities.md)).

### Resetting App and Server
To reset the app, tap on *Reset App* in the *Meta Settings*. To reset the server, delete all files in folder *db*.

## Build it yourself
If you want to build the app and/or the server from scratch, you can do so. The following steps should give you an overview how to achieve this. If you have built an app or a Java application before, you should be familiar with most of this procedure.

### Building the DIMBA app
1. Clone the code from GitHub
2. Open Android Studio (suggested version 4)
3. Choose **Open an existing Android Studio Project** -> select directory *DIMBA\_app* 
4. In Android Studio click on **Build** -> **Generate Signed APK** -> **Select APK**
5. When getting asked for a keystore either point to an existing one you are already using for your signing keys or create a new one including a new certificate to go along
6. Click **Next**
7. Choose a **APK Destination Folder**. The **Build Type** should be set to **release**. You can set the **Signature Version** to **V1** 
8. Click **Finish**. You should now have a signed APK *DIMBA.apk* in folder *DIMBA\_app/app/release/*. You can now install the APK as described in section **App Installation**.

Note: he same instructions can be used to build DIMBA\_exploit app.

### Building the server
1. Install Maven (suggested version 3.5.4)
2. Check out the DIMBA Repository
3. Go to folder *DIMBA\_server* of the repository you just cloned
4. Execute the following command: `mvn clean install`
5. This creates *DIMBA_server.jar* in directory *DIMBA\_server*. You can now use the jar to start the server as described in section **Usage**.

## Authors
The app was mainly developed as part of student theses by
+ Benjamin Heusser, BSc student at [ZHAW School of Engineering](https://www.zhaw.ch/en/school-of-engineering/)
+ Savin Niederer, BSc student at [ZHAW School of Engineering](https://www.zhaw.ch/en/school-of-engineering/)
+ Gregory Banfi, MSc student at [InIT](https://www.zhaw.ch/en/engineering/institutes-centres/init/)

Some further polishing work was done by
+ [Olivier Favre](https://www.zhaw.ch/en/about-us/person/favr/), research assistant at [InIT](https://www.zhaw.ch/en/engineering/institutes-centres/init/)

Further review and guidance of the project was done by
+ [Prof. Dr. Marc Rennhard](https://www.zhaw.ch/en/about-us/person/rema), head of [InIT](https://www.zhaw.ch/en/engineering/institutes-centres/init/)
+ [Prof. Dr. Bernhard Tellenbach](https://www.zhaw.ch/en/about-us/person/tebe), head of the Information Security Research Group at [InIT](https://www.zhaw.ch/en/engineering/institutes-centres/init/)
