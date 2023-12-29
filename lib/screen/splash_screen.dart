import 'dart:async';

import 'package:cookery/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    });

    return Scaffold(
        body: SafeArea(
            child: Center(
                child:
                    SvgPicture.asset('assets/icons/chef-hat-logo_grey.svg'))));
  }
}
