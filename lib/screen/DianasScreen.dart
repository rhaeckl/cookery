import 'package:flutter/material.dart';

class DianasScreen extends StatefulWidget {
  const DianasScreen({super.key, required this.title});

  final String title;

  @override
  State<DianasScreen> createState() => _DianasScreenState();
}

class _DianasScreenState extends State<DianasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title, style: const TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
          child: Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.tealAccent[0],
            child: SizedBox(
              width: 300,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xff4db7aa),
                      radius: 108,
                      child: CircleAvatar(
                        // backgroundImage: NetworkImage(
                        //     "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
                        backgroundImage: ExactAssetImage('assets/icons/logo.png'),
                        // backgroundImage: Image.asset("assets/icons/logo.png"),
                        radius: 100,
                      ), //CircleAvatar
                    ), //CircleAvatar
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    const Text(
                      'Cookery',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ), //Text
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    const Text(
                      'Hier steht irgendein Text der was zur App eingangs erklärt oder den Benutzer willkommen heißt. Dafür wird die Didi sich bestimmt was einfallen lassen :-)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ), //Textstyle
                    ), //Text
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    SizedBox(
                      width: 200,

                      child: ElevatedButton(
                        onPressed: () => 'Null',
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(const Color(0xff4db7aa))),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Row(
                            children: const [
                              Icon(Icons.touch_app),
                              Text('Rezept hinzufügen')
                            ],
                          ),
                        ),
                      ),
                    ) //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          )
      ),
    );
  }
}
