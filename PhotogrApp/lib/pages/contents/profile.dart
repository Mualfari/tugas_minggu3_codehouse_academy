import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_minggu3_codehouse_academy/widgets/menu_profile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ListView(
        children: [
          SizedBox(height: 20),
          Container(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/pp.jpg'),
                  radius: 40,
                ),
                SizedBox(height: 6),
                Text(
                  'hi, Faatikh Riziq!',
                  style: GoogleFonts.rubik(
                    fontSize: 14,
                    color: Color.fromRGBO(54, 58, 61, 1),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '+62123456789',
                  style: GoogleFonts.rubik(
                    fontSize: 14,
                    color: Color.fromRGBO(54, 58, 61, 1),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'indra@codehouse.id',
                  style: GoogleFonts.rubik(
                    fontSize: 14,
                    color: Color.fromRGBO(174, 185, 194, 1),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 36.5),
              Text(
                'Account',
                style: GoogleFonts.rubik(
                  fontSize: 14,
                  color: Color.fromRGBO(113, 132, 147, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              MenuProfile(
                title: 'Account Setting',
                assets: 'assets/images/user.png',
                suffix: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),
              MenuProfile(
                title: 'History',
                assets: 'assets/images/history.png',
                suffix: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),
              MenuProfile(
                title: 'Account Setting',
                assets: 'assets/images/star.png',
                suffix: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 18),
              Text(
                'Other Info',
                style: GoogleFonts.rubik(
                  fontSize: 14,
                  color: Color.fromRGBO(113, 132, 147, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              MenuProfile(
                  title: 'About this Apps',
                  suffix: Text(
                    'Version 1.0.0',
                    style: GoogleFonts.rubik(
                      fontSize: 11,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              SizedBox(height: 8),
              MenuProfile(
                title: 'Privacy Policy',
              ),
              SizedBox(height: 8),
              MenuProfile(
                title: 'FAQ',
              ),
              SizedBox(height: 8),
              MenuProfile(
                title: 'Terms Of Service',
              ),
              SizedBox(height: 25),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(236, 95, 112, 1)),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout_rounded),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Log out'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
