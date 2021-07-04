import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  PasswordWidget({Key? key}) : super(key: key);

  @override
  _PasswordWidgetState createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool passwordvisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null) {
          return 'valor nulo';
        } else if (value.length < 8) {
          return 'senha muito pequena';
        } else
          return null;
      },
      obscureText: passwordvisible,
      cursorColor: Colors.purple,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.purple,
          ),
          suffixIcon: IconButton(
              icon: passwordvisible
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
              onPressed: () =>
                  setState(() => passwordvisible = !passwordvisible)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          labelText: "Senha",
          labelStyle: TextStyle(color: Color(0xFF6200EE)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.purple))),
    );
  }
}
