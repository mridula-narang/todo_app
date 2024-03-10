import 'package:flutter/material.dart';

class genTextFormFeild extends StatelessWidget {
  TextEditingController controller;
  String hintname;
  IconData icon;
  bool isObscureText;

  genTextFormFeild(this.controller, this.hintname, this.icon, {this.isObscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 10.0),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.transparent)),
          prefixIcon: Icon(icon),
          hintText: hintname,
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}
