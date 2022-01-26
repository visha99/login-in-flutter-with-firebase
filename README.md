# PasanaQ Sol

This flutter app is a login with firebase.

## Getting Started
To use this app, its necessary a firebase account associated to the firebase database owned by pasanaq: 

The steps to have access to this db is:

1. Install Firebase CLI following the steps on this [link](https://firebase.google.com/docs/cli#install-cli-windows)
2. Execute the command below and follow the steps: 
```
  firebase login 
```
3. Log In in to the project with PasanaQ account 
4. Once you have access you should be able to see the project pasanaq_sol.

## Dependencies
When you have already created your project created in flutter, you need to add these dependencies in your file pubspec.yaml
-  cupertino_icons: ^1.0.2
-  firebase_core: ^1.11.0
-  firebase_auth: ^3.3.5
-  provider: ^6.0.2

## How to install Firebase

To install the FlutterFire CLI by running the following command:

  dart pub global activate flutterfire_cli

Then, In the root of your application, run the command:
  
  flutterfire configure 
  
 - Selecting a Firebase project.
 - Prompt what platforms you would like configuration for.
 - Enter the package name, in this case: 
 ```
 com.pasanaq.sol
 ```
 
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
