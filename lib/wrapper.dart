import 'package:flutter/material.dart';
import 'package:pasanaq_sol/screens/home_screen.dart';
import 'package:pasanaq_sol/screens/login_screen.dart';
import 'package:pasanaq_sol/services/auth_service.dart';
import 'package:provider/provider.dart';

import 'models/user_model.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<UserAttribtues?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<UserAttribtues?> snapshot){
          if(snapshot.connectionState == ConnectionState.active){
            final UserAttribtues? user = snapshot.data;
            return user == null ? LoginScreen() : HomeScreen();
          }else{
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
