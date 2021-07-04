import 'package:flutter/material.dart';
import 'package:project/Modules/login/login_page.dart';

class ButtonsWidget extends StatelessWidget {
  ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
          onPressed: () {
            if (formkeylogin.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('login feito com sucesso!'),
              ));
            }
          },
          child: Text('logar'),
          style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
        )),
      ],
    );
  }
}
