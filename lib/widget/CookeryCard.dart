import 'package:flutter/material.dart';

class CookeryCard extends StatelessWidget {
  const CookeryCard({super.key});

  @override
  Widget build(BuildContext context) {

    return const Card(
      elevation: 5,
      color: Color(0xff4db7aa),
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(13, 27, 10, 10),
        textColor: Colors.white,
        leading: Text('K', style: TextStyle(fontSize: 55)),
        title: Text('Kokoscurry'),
      ),
    );
  }
}
