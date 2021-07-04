import 'package:flutter/material.dart';

import 'package:project/shared/widgets/textFields/input_text_widget.dart';
import 'package:project/shared/widgets/textFields/inputname_widget.dart';
import 'package:project/shared/widgets/textFields/password_widget.dart';

class CreateaccountPage extends StatefulWidget {
  CreateaccountPage({Key? key}) : super(key: key);

  @override
  _CreateaccountPageState createState() => _CreateaccountPageState();
}

class _CreateaccountPageState extends State<CreateaccountPage> {
  final cadastrokey = GlobalKey<FormState>();
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
                'Cadastro',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 28,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 25,
              ),
              Form(
                  key: cadastrokey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InputnameWidget(),
                        SizedBox(
                          height: 10,
                        ),
                        InputTextWidget(),
                        SizedBox(
                          height: 25,
                        ),
                        PasswordWidget(),
                      ])),
              SizedBox(
                height: 25,
              ),
              validarcadastro(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget validarcadastro(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
          onPressed: () {
            if (cadastrokey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('cadastro feito com sucesso!')));
            }
          },
          child: Text('Cadastrar!'),
          style: ElevatedButton.styleFrom(
              primary: Colors.cyan,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
        )),
      ],
    );
  }
}
