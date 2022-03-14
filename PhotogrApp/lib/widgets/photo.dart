import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Photo extends StatelessWidget {
  final String assets;
  final String ppAssets;
  final int index;

  final height;
  const Photo(
      {Key? key,
      required this.assets,
      required this.ppAssets,
      required this.index,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    const String svgAssets = 'assets/svg/love.svg';

    List<String> name = [
      'Faatikh Riziq',
      'Elon Musk',
      'Bill Gates',
      'Mark Zukerberg',
      'Jeff Bezos'
    ];
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            assets,
            fit: BoxFit.cover,
            width: width,
            height: height,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          height: height,
          width: width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(backgroundImage: AssetImage(ppAssets)),
              SizedBox(width: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name[index],
                    style: GoogleFonts.rubik(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  Text(
                    'Programmer',
                    style: GoogleFonts.rubik(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '106',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    SizedBox(width: 5),
                    SvgPicture.asset(
                      svgAssets,
                      color: Colors.white,
                      height: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
