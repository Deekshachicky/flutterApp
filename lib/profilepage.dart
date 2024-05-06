import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Profile ',style: TextStyle(color: Colors.white),),
          leading: const Icon(Icons.arrow_circle_left, color: Colors.white,),
      actions: [
        IconButton(onPressed: () => {}, icon: const Icon(Icons.search,), color: Colors.white,),
      ],
      ),
      body :
      Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            height: 100,
            decoration:
      BoxDecoration(
      color: Colors.blue[900],
        borderRadius: const BorderRadius.only().add(
                const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                ),
              ),
            ),
            ),
            Positioned(
                top:5,
                left: 20,
                right: 20,
                child:  Card
                  (color: Colors.white,
                margin: const EdgeInsets.all(20),
                shadowColor: Colors.white,
                elevation: 10,

                child: Container(
                  height: 150,
                  decoration:
                  BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only().add(
                      const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                    child:  Column(
                      children: [
                        Image.asset ('assets/Image_039.webp', height: 30, width:30),
                        const Column(
                          children: [

                            SizedBox(height: 10),
                            Text(
                              "Rachael Wagner",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Junior Product Designer")
                          ],
                        ),
                        const SizedBox(height: 25),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                "Edit profile",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              "(1/5)",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                          ],
                        ),


                    ),

                ),
                  ),

                  ],
      ),

      bottomNavigationBar:
      BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.featured_play_list_sharp),
    label: 'Information',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.monetization_on),
    label: 'Wallet',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.arrow_circle_right_sharp),
    label: 'logout',
    ),
    ],
        backgroundColor: Colors.white,
        iconSize: 20,
    ),



    );











               }
                    }
