import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_minggu3_codehouse_academy/pages/home.dart';
import 'package:tugas_minggu3_codehouse_academy/pages/sign_up.dart';
import '../widgets/textfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              "Log In",
              style: GoogleFonts.rubik(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Sign In to continue",
              style: GoogleFonts.rubik(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0x6A6A6A6A),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: ListView(
          children: [
            SizedBox(height: 90),
            Text(
              'Username',
              style: GoogleFonts.rubik(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 8),
            FieldWidget(hintTextField: "Enter your username", data: username),
            const SizedBox(height: 41),
            Text(
              'Password',
              style: GoogleFonts.rubik(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 8),
            FieldWidget(
              hintTextField: "***********",
              data: password,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                String usernameLogin = username.text;
                String passwordLogin = password.text;

                if (usernameLogin == 'admin' && passwordLogin == 'admin') {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
                } else {
                  showAboutDialog(
                      context: context, children: [Text('password salah')]);
                }
              },
              child: const Text('Log in'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(width, 45),
                primary: const Color(0xFF5F6F8C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Container(
              height: height / 3.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0x6A6A6A6A),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: ((context) {
                            return SignUp();
                          })));
                        },
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
