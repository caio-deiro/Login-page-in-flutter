import 'package:flutter/material.dart';
import 'package:project/Modules/login/login_page.dart';

import 'package:project/shared/widgets/textFields/input_text_widget.dart';

class PasswordPage extends StatefulWidget {
  PasswordPage({Key? key}) : super(key: key);

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final formkeypassword = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 36),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Container(
                height: 150,
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Recuperar senha',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 28,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Digite seu email e enviaremos um link para a recuperação da senha :',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 25,
              ),
              Form(
                  key: formkeypassword,
                  child: Column(
                    children: [
                      InputTextWidget(),
                    ],
                  )),
              SizedBox(
                height: 35,
              ),
              passbutton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget passbutton(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
          onPressed: () {
            if (formkeypassword.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('Email enviado com sucesso!'),
              ));
            }
          },
          child: Text('Enviar email!'),
          style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
        )),
      ],
    );
  }
}
