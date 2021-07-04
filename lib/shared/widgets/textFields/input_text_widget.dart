import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  InputTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null) {
          return 'valor nulo';
        } else if (!value.contains("@")) {
          return 'email sem @! Tente novamente!';
        } else if (value.length < 8) {
          return 'email muito pequeno';
        } else if (!value.contains('hotmail') &&
            !value.contains('outlook') &&
            !value.contains('ig') &&
            !value.contains('gmail')) {
          return 'não contem os webmails! (exemplo : outlook)';
        } else
          return null;
      },
      cursorColor: Colors.purple,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email,
            color: Colors.purple,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          labelText: "email",
          labelStyle: TextStyle(color: Color(0xFF6200EE)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.purple))),
    );
  }
}
