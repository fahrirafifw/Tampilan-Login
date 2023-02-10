import 'package:flutter/material.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  const RoundedPasswordField(
      {Key? key, required this.onChanged, this.validator, this.controller})
      : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool isObscure = true;
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
        obscureText: isObscure,
        onChanged: widget.onChanged,
        validator: widget.validator,
        controller: widget.controller,
        cursorColor: Color(0xff004993),
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(fontFamily: "SF"),
          icon: const Icon(
            Icons.lock,
            color: Color(0xff004993),
          ),
          suffixIcon: IconButton(
              icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off,
                  color: Color(0xff004993)),
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              }),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
// class RoundedPasswordField extends StatelessWidget {
//   final ValueChanged<String> onChanged;
//   final String? Function(String?)? validator;
//   final TextEditingController? controller;
//   final bool isObscure;
//   var obscureText;
//   RoundedPasswordField(
//       {Key? key,
//       required this.onChanged,
//       this.validator,
//       this.controller,
//       required this.isObscure})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//       width: size.width * 0.8,
//       decoration: BoxDecoration(
//         color: Colors.blue[100],
//         borderRadius: BorderRadius.circular(29),
//       ),
//       child: TextFormField(
//         obscureText: isObscure,
//         onChanged: onChanged,
//         validator: validator,
//         controller: controller,
//         cursorColor: Color(0xff004993),
//         decoration: InputDecoration(
//           hintText: "Password",
//           hintStyle: TextStyle(fontFamily: "SF"),
//           icon: Icon(
//             Icons.lock,
//             color: Color(0xff004993),
//           ),
//           suffixIcon: Icon(
//             isObscure ? Icons.visibility : Icons.visibility_off,
//             color: Color(0xff004993),
//           ),
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
// }
