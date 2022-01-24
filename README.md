# pasanaq_sol

This flutter app is a login with firebase and WebView

## Getting Started
To use this app, its necessary a firebase account associated to the firebase database owned by pasanaq: 

The steps to have access to this db is:

1. Install Firebase CLI following the steps on this [link](https://firebase.google.com/docs/cli#install-cli-windows)
2. Execute this command: firebase login and following the steps 
3. You should log in to the project only with the account we provide you
4. Once you have access you should be able to see  the project pasanaq_sol  on your dashboard

## Dependencies
We need to add these dependencies in your file pubspec.yaml
-  cupertino_icons: ^1.0.2
-  firebase_core: ^1.11.0
-  firebase_auth: ^3.3.5
-  provider: ^6.0.2
-  webview_flutter: ^3.0.0

## How to install Firebase
Install the FlutterFire CLI by running the following command:

  dart pub global activate flutterfire_cli

Then, In the root of your application, run the command:
  
  flutterfire configure 
  
 - Selecting a Firebase project.
 - Prompt what platforms you would like configuration for.
 - Enter the package name, in this case: com.pasanaq.sol
 
Once complete, you can now import the generated file and provide it to the initializeApp method:
```
 import 'firebase_options.dart';
 import 'package:firebase_auth/firebase_auth.dart';
 ```
 
Then, provide the current platform options via the getter from the class:currentPlatformDefaultFirebaseOptions

```
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
```
