import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StackOverflow extends StatefulWidget {
  const StackOverflow({super.key});

  @override
  State<StackOverflow> createState() => _StackOverflowState();
}

class _StackOverflowState extends State<StackOverflow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(alignment: Alignment.center,
            children: [

              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),

              Container(
                width: 90,
                height: 90,
                color: Colors.green,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),

]
          )
        ),

    );

  }
}
