import 'package:flutter/material.dart';

class InputnameWidget extends StatefulWidget {
  InputnameWidget({Key? key}) : super(key: key);

  @override
  _InputnameWidgetState createState() => _InputnameWidgetState();
}

class _InputnameWidgetState extends State<InputnameWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null) {
          return 'Nenhum nome foi inserido!';
        } else if (value.contains("@''#%¨&*(){}^^`?:.,><123456789")) {
          return 'nome invalido!';
        } else if (value.length <= 2) {
          return 'nome muito pequeno';
        } else
          return null;
      },
      cursorColor: Colors.purple,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          helperText: 'Minimo de 3 letras!',
          helperStyle: TextStyle(color: Colors.purple, fontSize: 14),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.purple,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          labelText: "Nome",
          labelStyle: TextStyle(color: Color(0xFF6200EE)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.purple))),
    );
  }
}
