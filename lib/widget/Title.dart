import 'package:flutter/material.dart';

class CookeryTitle extends StatelessWidget {
  const CookeryTitle({
    Key? key, required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              )
            ]));
  }
}