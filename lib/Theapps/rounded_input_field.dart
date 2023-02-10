import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final ValueChanged<String> onChanged;
  const RoundedInputField(
      {Key? key,
      required this.hintText,
      this.icon = Icons.person,
      required this.onChanged,
      this.validator,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        controller: controller,
        cursorColor: Color(0xff004993),
        decoration: InputDecoration(
          icon: Icon(icon, color: Color(0xff004993)),
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: "SF"),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
