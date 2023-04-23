import 'package:flutter/material.dart';

class AddRecipeScreen extends StatefulWidget {
  const AddRecipeScreen({super.key});

  final String title = "Neues Rezept";

  @override
  State<AddRecipeScreen> createState() => _AddRecipeState();
}

class _AddRecipeState extends State<AddRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: const Icon(Icons.close, size: 32),
          onPressed: () {
            // Add code for close button here
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: 'URL',
              ),
            ),
          ),
          Center(
              // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const AddRecipeScreen()),
                    // );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff4db7aa))),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      children: const [
                        Icon(Icons.touch_app, color: Colors.white),
                        Text('Rezept hinzufügen', style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
              )),
          // const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text("Kategorien",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Color(0xff4db7aa),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 29.0,
              ),
              label: const Text('Neue Kategorie', style: TextStyle(fontSize: 17)),
            ),
          )
        ],
      ),
    );
  }
}
