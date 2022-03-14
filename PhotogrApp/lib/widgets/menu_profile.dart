import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuProfile extends StatelessWidget {
  final String? title;
  final String? assets;
  final Widget? suffix;
  const MenuProfile({Key? key,this.title, this.assets, this.suffix}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(8),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            spreadRadius: 0.1,
            blurRadius: 0.3,
            offset: Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          assets == null
              ? SizedBox(
                  width: 0,
                )
              : Image.asset(assets!),
          SizedBox(
            width: 9,
          ),
          Expanded(
              child: Text(
            title == null ? '' : title!,
            style: GoogleFonts.rubik(
              fontSize: 13,
              color: Color.fromRGBO(121, 121, 121, 1),
              fontWeight: FontWeight.w500,
            ),
          )),
          suffix == null ? SizedBox(width: 0) : suffix!,
        ],
      ),
    );
  }
}
