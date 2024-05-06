import 'package:flutter/material.dart';

class IdendtityCard extends StatelessWidget {
  const IdendtityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text("Identity Card"),
      elevation: 0.0,
      centerTitle: true,),
      body:Padding(padding:const EdgeInsets.all(20),
       child: SizedBox(
         height: 1000,
         child: Row(
          children: [
              Column(
                children:[
                  Card(

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            alignment: Alignment.topLeft,
                            height:100,
                            width:100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow:[
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0,3),
                                  )
                                ],
                                image: const DecorationImage(image: AssetImage('assets/deekshaimage.jpg',))
                            ),),
                        ),
                        const Column(
                          children: [
                             Text("Deeksha Goyal", style: TextStyle(
                                color: Colors.black),),
                             Text("Flutter Intern", style: TextStyle(
                                color: Colors.blue

                            ),),
                            Divider(
                              height: 150,
                              color: Colors.orange,
                              thickness: 2,
                              indent: 20,
                              endIndent: 20,
                            )],
                        ),
                      ],
                    ),
                  ),
                ],
              ),



            //Column(
             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
               //crossAxisAlignment: CrossAxisAlignment.start,
                //children:[
                  //Card(
            //         child: Padding(
            //           padding: const EdgeInsets.all(2),
            //
            //           child: Container(
            //             height:500,
            //             width:700,
            //             decoration: BoxDecoration(
            //                 color: Colors.yellow,
            //                 borderRadius: BorderRadius.circular(20),
            //                 boxShadow:[
            //                   BoxShadow(
            //                     color: Colors.black.withOpacity(0.5),
            //                     spreadRadius: 5,
            //                     blurRadius: 7,
            //                     offset: const Offset(0,3),
            //                   )
            //                 ],
            //                 image: const DecorationImage(
            //                     image: AssetImage('assets/deekshaimage.jpg')
            //
            //
            //                 )
            //
            //             ),),
            //
            //
            //         ),
            //       ),
            //     ]),
            // Row(
            //   children: [
            //     const Text("Deeksha Goyal", style: TextStyle(
            //         color: Colors.black),),
            //     const Text("Flutter Intern", style: TextStyle(
            //         color: Colors.blue
            //     ),),
            //
            //   ],
            // ),
          ]),
       )
      ));
  }
}
