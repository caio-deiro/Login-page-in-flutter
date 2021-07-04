import 'package:flutter/material.dart';
import 'package:project/shared/widgets/buttons/buttoncadastro_widget.dart';
import 'package:project/shared/widgets/buttons/buttons_widget.dart';
import 'package:project/shared/widgets/textFields/input_text_widget.dart';
import 'package:project/shared/widgets/textFields/password_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

final formkeylogin = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              Container(
                height: 150,
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Login',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 28,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                  key: formkeylogin,
                  child: Column(
                    children: [
                      InputTextWidget(),
                      SizedBox(
                        height: 15,
                      ),
                      PasswordWidget(),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/password");
                      },
                      child: Text('Esqueceu a senha?',
                          style: TextStyle(color: Colors.purple)))
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ButtonsWidget(),
              Divider(
                height: 50,
                thickness: 4,
                color: Colors.purple,
              ),
              ButtoncadastroWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
