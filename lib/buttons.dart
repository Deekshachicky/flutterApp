import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  get onPressed => null;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title: const Text('Buttons'),),
      body:
      Card(
        color: Colors.yellow,
        child: Container(
          width: 500,
          height: 150,
          child: Column(
            children: [
              Row(

                children: [
                    Image.asset('assets/deekshaimage.jpg', height: 100,),
                  const Padding(padding: EdgeInsets.only(left: 15.0),

                  ),
                ElevatedButton(onPressed:(){
                  print("Elevated Button");
                  child: const Text("Save", style: TextStyle(color: Colors.black));
                }, child: child,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue),
                )],
        ),
    ])
    ,
          ),

      ),
    );
  }
}
