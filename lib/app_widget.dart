import 'package:flutter/material.dart';
import 'package:project/Modules/create_account/createaccount_page.dart';
import 'package:project/Modules/login/login_page.dart';
import 'package:project/Modules/password/password_page.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/cadastro": (context) => CreateaccountPage(),
        "/password": (context) => PasswordPage(),
      },
    );
  }
}
