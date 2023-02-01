import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 80, 20, 20),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          labelText: 'Suche in Cookery',
          contentPadding: EdgeInsets.only(bottom: -25.0, left: 10),
          suffixIconConstraints: BoxConstraints(minWidth: 50),
          suffixIcon: Align(
            widthFactor: 1.0,
            child: Icon(Icons.pageview, color: Color(0xff4db7aa), size: 40,),
          ),
        ),
      ),
    );
  }
}
