import 'package:flutter/material.dart';
import 'package:towards_excellence/posts/post1.dart';
import 'package:towards_excellence/posts/post2.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('STILL LEARNING'),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        body: PageView(
          // scrollDirection: Axis.vertical,
          controller: _controller,
          children: [Mypost1(), Mypost2()],
        ));
  }
}
