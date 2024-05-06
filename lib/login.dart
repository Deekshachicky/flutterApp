import 'package:flutter/material.dart';

import 'buttons.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  get alignment => null;

  get nameController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.blueAccent, title: const Text('Welcome'),
      ),
        body:

        Card(

      color: Colors.white,
          child: SizedBox(
            width: 1000,
            height: 1000,
            child: Column(
              children: [
                Image.asset('assets/Image_039.webp', height: 100, width: 1000,),
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Name',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),

                    )),
                Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Your Name'
                  ),
                ),),
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),

                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Password'
                    ),
                  ),),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed:() {
                        showDialog(context: context,

                            builder: ( BuildContext context){
                          return  AlertDialog(
                            content: Column(
                              children: [
                                const Text('save'),
                              ElevatedButton( onPressed:() {
                              }, child: const Text('Save'),)
                          ,
                              ],

                          ));
                            }
                        );  

                        Navigator.push(context,
                            MaterialPageRoute(builder:( BuildContext context)=> const Button()));
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                            backgroundColor: Colors.amber,
                            elevation: 5,

                            content: Text("Snackbar Show")));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: const Text('show me the dialogue box'),
                    )

                    ),

              ],
            ),
          ),

          ),
    );

  }
}
