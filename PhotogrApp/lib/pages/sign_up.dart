import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_minggu3_codehouse_academy/widgets/textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: -15,
        leading: GestureDetector(
          onTap: (() {
            Navigator.of(context).pop();
          }),
          child: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Row(
          children: [
            Text(
              "Sign Up",
              style: GoogleFonts.rubik(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Register to create an account ",
              style: GoogleFonts.rubik(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(106, 106, 106, 1),
              ),
            ),
            SizedBox(height: 58),
            Text(
              'Username',
              style: GoogleFonts.rubik(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000),
              ),
            ),
            SizedBox(height: 8),
            //Username
            FieldWidget(
              hintTextField: "Enter your username",
              data: TextEditingController(),
            ),
            SizedBox(height: 16),
            Text(
              'Email',
              style: GoogleFonts.rubik(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000),
              ),
            ),
            SizedBox(height: 8),
            FieldWidget(
              hintTextField: "Enter your email",
              data: TextEditingController(),
            ),
            SizedBox(height: 16),
            Text(
              'Password',
              style: GoogleFonts.rubik(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000),
              ),
            ),
            SizedBox(height: 8),
            FieldWidget(
              hintTextField: "Enter your password",
              data: TextEditingController(),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(width, 45),
                primary: const Color(0xFF5F6F8C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Container(
              height: height / 4.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0x6A6A6A6A),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Log in',
                          style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
