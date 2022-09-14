import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/mobile_view.dart';
import 'package:web/webpage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool onhoveredHome = false;
bool onhoveredWork = false;
bool onhoveredAboutMe = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWitdh = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Scaffold(
          backgroundColor: Color.fromRGBO(229, 235, 240, 1),
          body: currentWitdh < 1100.0 ? ConstrainedBox(constraints: BoxConstraints(minHeight: 500.h,minWidth: 200.w),
          child: MobileView()) : WebView(),
        ),
      ),
    );
  }
}
