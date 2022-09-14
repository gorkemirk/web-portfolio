import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

Color iconColor = Colors.blueAccent;
bool onhoveredHome = false;
bool onhoveredWork = false;
bool onhoveredAboutMe = false;
bool animationStatus = false;

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: Drawer(child: Text("sa"),),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(236, 238, 240, 1),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0.h, horizontal: 25.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Drawer(),
                    Text(
                      "morg.",
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(59, 68, 74, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Let's Talk",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14.h,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 200.w,
                                    height: 200.w,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(246, 248, 249, 1),
                                        borderRadius: BorderRadius.circular(360)),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Hello I'm",
                                        style: GoogleFonts.poppins(
                                            color: Color.fromRGBO(59, 68, 74, 1),
                                            fontSize: 30.w,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Gorkem",
                                        style: GoogleFonts.poppins(
                                            color: Color.fromRGBO(59, 68, 74, 1),
                                            fontSize: 60.w,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Designer with 12 years experience sketching, building and coaching. I love fun UI, collabration and making helpful product that connect people.",
                                        style: GoogleFonts.poppins(
                                            color: Color.fromRGBO(59, 68, 74, 1),
                                            fontSize: 18.w,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(246, 248, 249, 1),
                                        borderRadius: BorderRadius.circular(360)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    if (value) {
                                      iconColor = Colors.red;
                                    } else {
                                      iconColor = Colors.blueAccent;
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(60)),
                                    child: Padding(
                                        padding: EdgeInsets.all(3.w),
                                        child: Icon(
                                          size: 40.w,
                                          Icons.email_outlined,
                                          color: iconColor,
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(60)),
                                    child: Padding(
                                        padding: EdgeInsets.all(3.w),
                                        child: Icon(
                                          size: 40.w,
                                          Icons.web_outlined,
                                          color: Colors.blueAccent,
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(60)),
                                    child: Padding(
                                        padding: EdgeInsets.all(3.w),
                                        child: Icon(
                                          size: 40.w,
                                          Icons.telegram_outlined,
                                          color: Colors.blueAccent,
                                        )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              width: 800.w,
                              height: 800.w,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(246, 248, 249, 0.6),
                                  borderRadius: BorderRadius.circular(360)),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "images/adam.png",
                                fit: BoxFit.fitWidth,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container appbarTextbuttons(String title) {
    return Container(
      decoration: BoxDecoration(
          border: onhoveredHome == true ? buttonborderhome : nonebuttonborder),
      child: TextButton(
          onHover: (value) => setState(() {
                if (value) {
                  renkler.appbarbuttontextcolorHome = Colors.blue.shade400;
                  onhoveredHome = true;
                } else {
                  renkler.appbarbuttontextcolorHome =
                      Color.fromRGBO(173, 174, 175, 1);
                  onhoveredHome = false;
                }
              }),
          style: TextButton.styleFrom(
              primary: Color.fromRGBO(241, 244, 246, 1),
              elevation: 0,
              side: BorderSide(style: BorderStyle.none)),
          onPressed: () {},
          child: Text(
            title,
            style:
                GoogleFonts.poppins(color: renkler.appbarbuttontextcolorHome),
          )),
    );
  }

  Container appbarTextbuttonsWork(String title) {
    return Container(
      decoration: BoxDecoration(
          border: onhoveredWork == true ? buttonborderwork : nonebuttonborder),
      child: TextButton(
          onHover: (value) => setState(() {
                if (value) {
                  renkler.appbarbuttontextcolorWork = Colors.blue.shade400;
                  onhoveredWork = true;
                } else {
                  renkler.appbarbuttontextcolorWork =
                      Color.fromRGBO(173, 174, 175, 1);
                  onhoveredWork = false;
                }
              }),
          style: TextButton.styleFrom(
              primary: Color.fromRGBO(241, 244, 246, 1),
              elevation: 0,
              side: BorderSide(style: BorderStyle.none)),
          onPressed: () {},
          child: Text(
            title,
            style:
                GoogleFonts.poppins(color: renkler.appbarbuttontextcolorWork),
          )),
    );
  }

  Container appbarTextbuttonsAboutMe(String title) {
    return Container(
      decoration: BoxDecoration(
          border: onhoveredAboutMe == true
              ? buttonborderaboutme
              : nonebuttonborder),
      child: TextButton(
          onHover: (value) => setState(() {
                if (value) {
                  renkler.appbarbuttontextcolorAboutMe = Colors.blue.shade400;
                  onhoveredAboutMe = true;
                } else {
                  renkler.appbarbuttontextcolorAboutMe =
                      Color.fromRGBO(173, 174, 175, 1);
                  onhoveredAboutMe = false;
                }
              }),
          style: TextButton.styleFrom(
              primary: Color.fromRGBO(241, 244, 246, 1),
              elevation: 0,
              side: BorderSide(style: BorderStyle.none)),
          onPressed: () {},
          child: Text(
            title,
            style: GoogleFonts.poppins(
                color: renkler.appbarbuttontextcolorAboutMe),
          )),
    );
  }
}
