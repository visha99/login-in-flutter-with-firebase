import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pasanaq_sol/screens/login_screen.dart';
import 'package:pasanaq_sol/screens/register_screen.dart';
import 'package:pasanaq_sol/services/auth_service.dart';
import 'package:pasanaq_sol/wrapper.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
        },
      ),

      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
