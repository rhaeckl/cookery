import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // body: Container(
        //     height: 300,
        //     width: double.infinity,
        //     decoration: const BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage("assets/icons/start_image.jpg"),
        //           fit: BoxFit.cover),
        //     ),
        //     child: Column(
        //       children: const [
        //         Text('Cookery',
        //             style: TextStyle(
        //               fontSize: 30,
        //               color: Colors.black,
        //               fontWeight: FontWeight.w500,
        //             )),
        //       ],
        //     ))
    );
  }
}
