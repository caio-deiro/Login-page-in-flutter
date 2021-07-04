import 'package:flutter/material.dart';

class ButtoncadastroWidget extends StatelessWidget {
  ButtoncadastroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/cadastro");
          },
          child: Text('Cadastre-se!'),
          style: ElevatedButton.styleFrom(
              primary: Colors.cyan,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
        )),
      ],
    );
  }
}
