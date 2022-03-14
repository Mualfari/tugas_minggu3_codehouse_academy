import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_minggu3_codehouse_academy/pages/contents/home_menu.dart';
import 'package:tugas_minggu3_codehouse_academy/pages/contents/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _menuBar = [
    HomeMenu(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Row(
          children: [
            // ignore: sized_box_for_whitespace
            navBarItem(context, Icons.home, 0, "Home"),
            navBarItem(context, Icons.person, 1, "Profile"),
          ],
        ),
        body: _menuBar.elementAt(_selectedIndex));
  }

  Widget navBarItem(
    BuildContext context,
    IconData icon,
    int index,
    String titleMenu,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.only(top: 10),
        height: 57,
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          children: [
            Icon(
              icon,
              color: index == _selectedIndex ? Color(0xFF5F6F8C) : Colors.grey,
            ),
            Text(
              titleMenu,
              style: GoogleFonts.rubik(
                fontSize: 13,
                color:
                    index == _selectedIndex ? Color(0xFF5F6F8C) : Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
