# DIBA - Damn Insecure Banking App

## What is DIBA?
At the core DIBA, is a vulnerable Banking App that was designed to provide a realistic training ground for Android Penetration Testing. There are also other intentionally vulnerable Android App projects out there (e.g., [DIVA](https://github.com/payatu/diva-android) or [InsecureBankV2](https://github.com/dineshshetty/Android-InsecureBankv2)), however either they are no longer maintained or they are not up to date with the current Android Design Guidelines.

## Features
This project is split into two parts. The first part is the Banking App itself which provides the following features:
+ A number of activities that are typical for a banking app, such as login screen, registering for the service, account balance view, sending and receiving payments, loading a payslip from a file, investment area, live-view on stock market, and sending and receiving messages
+ Modern look and feel thanks to Material Design
+ Plenty of vulnerabilities to discover, currently there are 24 vulnerabilities to find
+ Metasettings that make it harder to crack some vulnerabilities

The second part is the server component with which the app communicates. For the training app to be realistic such a component needs to exist since most app nowadays make use of a backend to implement most of their business logic and only use the app as a presentation layer. In the case of this project the backend has the following features:
+ REST API
+ Inmemory storage for persisting transactions/activities during a training session
+ Authentication via JWT
+ Different implementations of the communication between app and server, some are more secure than others

All in all there are 24 vulnerabilities you can find. They can be grouped into the following categories:
+ Network communication
+ Hardcoded Credentials
+ SQL Injection
+ Clipboard Danger
+ Exported Content Provider
+ Intent Redirection
+ Logging
+ Aliases Export Activities
+ Directory Traversal
+ Weak Encryption
+ Authentication 
+ Information Leakage
+ Insufficient Protection Level
+ Back Button Log Clearing
+ Input Validation
+ Developer Entrance
+ App Backup
+ Fragment Injection
+ Insecure Services
+ Weak JWT

You can use DIBA in two ways. One way is to simply use and analyse the app with the goal to find vulnerabilities. Alternatively, you can use [Vulnerabilities.md](Vulnerabilities.md), which provides some guidance for all the vulnerabilities and corresponding exploitation goals to achieve.

Additionally we have written a solution document which describes all the vulnerabilities in detail with steps to exploit and how to fix them.

## Usage
### Prerequisites
To run the app and the server, the following is required:
+ Newest DIBA Release (https://github.engineering.zhaw.ch/InsecureBanking/DIBA/releases/tag/1.4)
+ Android Debug Bridge (adb)
+ Java Runtime Environment (Java 8 or higher)
+ An Android device or a virtual machine running Android

For finding and exploiting the vulnerabilities you probably need a bunch of tools:
+ [Apktool](https://ibotpeaches.github.io/Apktool/)
+ [Jadx](https://github.com/skylot/jadx)
+ [Drozer](https://labs.mwrinfosecurity.com/tools/drozer/)
+ [ABE — Android Backup Extractor](https://github.com/nelenkov/android-backup-extractor)

### Virtual Machine Setup
To run Android as a virtual machine, some additional steps are necessary. The following steps describe how to do this with VirtualBox. It should also be possible to use different virtualization software such as VmWare:
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

### Server
The Banking App needs a server to communicate to. To make this possible we provide a Java server together with the app release (https://github.engineering.zhaw.ch/InsecureBanking/DIBA/releases/tag/1.4). When extracting the jar, you need to make sure to also extract the keystore subdirectory with the keystore file in it. The keystore directory needs to be placed in the same folder as the jar file. You can then run the server locally on your machine with Java:

``` java -jar DIBA.jar ```

### App Installation
Now that the Android VM is running you can install the app:
1. Check if adb is connected with your device by running the following command: `adb devices`
2. If it is not connected you can establish a connection by running the command: `adb connect 127.0.0.1:5555`
3. Now you can install the APK by executing the following command: `adb install /path/to/DIBA.apk` 
4. There might be a prompt in your Android VM you have to accept for the installation to complete
5. Copy the rootCA.crt File to your device by using the adb command `adb push /path/to/rootCA.crt /sdcard`
6. Install the certificate on your device. You can do this in the Settings under Security -> Install from SD card -> Select your certificate.

### App Configuration

1. Open the App
2. Open the Metasettings
3. If you do not use an Android Studio Emulator or the server is not running on the same device as your emulator, change the IP of the Server to the correct one.
4. Change the communication difficulty to the difficulty of your choice

## Build it yourself

If you want to build the app and/or the server from scratch you can do so. The following steps should give you an overview how to achieve this. If you have build an app or a Java application before you should be familiar with most of this procedure.

### Building the app
1. Clone the code from GitHub
2. Open Android Studio
3. Choose **Open an existing Android Studio Project** -> Select the Directory where you cloned the repository into
4. In Android Studio click on **Build** -> **Generate Signed APK**
5. When getting asked for a keystore either point to an existing one you are already using for your signing keys or create a new one including a new certificate to go along
6. Click **Next**
7. Choose a **APK Destination Folder**. The **Build Type** should be set to **Debug**. You can set the **Signature Version** to **V2** 
8. Click **Finnish**. You should now have a signed APK in your chosen destination folder. You can now install the APK as described in the **App Installation** Section.

### Building the server

1. Install Maven
2. Check out the DIBA Repository
3. Go to the root folder of the repository you just cloned
4. Execute the following command: `mvn clean install`
5. You should now have two jar-files in the target-folder, one with dependencies and one without. You can now use the jar to start the server as described in the **Usage** section.

## Feedback / Contributions
If you have feedback or suggestions for the project feel free to create an issue and we will have a look at it. If you want to contribute you can do so by cloning the repository and creating a pull request with your changes. 

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
