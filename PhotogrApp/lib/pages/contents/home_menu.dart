import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_minggu3_codehouse_academy/widgets/photo.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 10,
      title: Text(
        "Hi, Faatikh Riziq",
        style: GoogleFonts.rubik(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: const Color.fromRGBO(54, 58, 61, 1),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/pp.jpg',
          ),
        ),
      ),
      toolbarHeight: 80,
      actions: [
        Icon(
          Icons.notifications,
          color: Colors.grey,
        ),
      ],
    );
    final Widget mText = Container(
        height: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              """Welcome to 
          Our PhotogrApps
                """,
              style: GoogleFonts.rubik(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(113, 132, 147, 1),
              ),
            ),
            Text(
              "Newest Photo",
              style: GoogleFonts.rubik(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(113, 132, 147, 1),
              ),
            ),
          ],
        ));

    final sizePhoto = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16),
      child: ListView(
        children: [
          appBar,
          mText,
          Photo(
            assets: 'assets/images/1.jpg',
            ppAssets: 'assets/images/pp.jpg',
            index: 0,
            height: sizePhoto * 0.34,
          ),
          SizedBox(height: 10),
          Photo(
            assets: 'assets/images/2.jpg',
            ppAssets: 'assets/images/pp2.jpg',
            index: 1,
            height: sizePhoto * 0.34,
          ),
          SizedBox(height: 10),
          Photo(
            assets: 'assets/images/3.jpg',
            ppAssets: 'assets/images/pp3.jpg',
            index: 2,
            height: sizePhoto * 0.34,
          ),
          SizedBox(height: 10),
          Photo(
            assets: 'assets/images/4.jpg',
            ppAssets: 'assets/images/pp4.jpg',
            index: 3,
            height: sizePhoto * 0.34,
          ),
          SizedBox(height: 10),
          Photo(
            assets: 'assets/images/5.jpg',
            ppAssets: 'assets/images/pp5.jpg',
            index: 4,
            height: sizePhoto * 0.34,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
