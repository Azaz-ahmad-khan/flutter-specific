import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String post = '';
  final textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            height: 300,
            width: 200,
            child: Text(
              post,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textcontroller,
                decoration: InputDecoration(
                    hintText: "What's on your mind",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    suffix: IconButton(
                        onPressed: () {
                          textcontroller.clear();
                        },
                        icon: Icon(Icons.clear))),
              )),
          MaterialButton(
            onPressed: () {
              setState(() {
                post = textcontroller.text;
              });
            },
            child: Text('Tweet'),
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
