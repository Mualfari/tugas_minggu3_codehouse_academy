import 'package:flutter/material.dart';

class FieldWidget extends StatelessWidget {
  final String? hintTextField;
  final Widget? suffixIcon;
  final TextEditingController data;

  const FieldWidget({
    Key? key,
    this.hintTextField,
    this.suffixIcon,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: data,
      cursorColor: Colors.black,
      cursorWidth: 1.5,
      cursorHeight: 20,
      autocorrect: false,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.none),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF5F6F8C),
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        hintText: hintTextField,
        suffixIcon: suffixIcon,
        fillColor: Color.fromRGBO(169, 188, 207, 0.2),
        filled: true,
      ),
    );
  }
}

// class Password extends StatelessWidget {
//   const Password({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const TextField(
//       cursorColor: Colors.black,
//       cursorWidth: 1.5,
//       cursorHeight: 20,
//       autocorrect: false,
//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(10),
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(
//             color: Color(0xFF5F6F8C),
//             width: 2,
//           ),
//           borderRadius: BorderRadius.all(
//             Radius.circular(10),
//           ),
//         ),
//         hintText: "Enter Your Username",
//         fillColor: Color.fromRGBO(169, 188, 207, 0.2),
//         filled: true,
//       ),
//     );
//   }
// }
