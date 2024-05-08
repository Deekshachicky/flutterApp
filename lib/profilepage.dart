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
      body : Column(
          children: [
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
                              const SizedBox(height: 10),
                                ],
                              ),


                          ),

                      ),
                        ),

                        ],
            ),
      ListView(
      children:  <Widget>[
         const Text('Saved Card',
         selectionColor: Colors.black,
         ),

         Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
           ListTile(
           leading:  const Icon(Icons.check_circle, color: Colors.blue,),
            title:  const Text('XXXX XXXX XXXX 4321'),
            trailing:  Image.asset('assets/MASTERCARD.jpg', height: 40, width: 40,),

           ),

           const Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children:  <Widget>[
             Text('Mario Speedwagon'),
             Text('Valid Thru  08/28', selectionColor: Colors.grey,
             textAlign: TextAlign.right),


    ],
    ),

    ],
    ),
    ),
        const Text('Other Details'),
        const Card(
        child: ListTile(

          leading:
          SizedBox(
            height: 40,
            width: 40,
            child: CircleAvatar
              (
          child: Icon(Icons.qr_code),
        ),
          ),
          title:  SizedBox(
          height: 40,
            width: 40,
          child: CircleAvatar
          (
            child: Icon(Icons.home_filled),
        ),
       ),
        trailing: SizedBox(
          height: 40,
          width: 40,
          child: CircleAvatar
            (
            child: Icon(Icons.lock_clock_outlined),
          ),
        ),
        ),
         ),
        const Card(
          child: ListTile(

            leading:
            SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar
                (
                child: Icon(Icons.settings_overscan),
              ),
            ),
            title:  SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar
                (
                child: Icon(Icons.doorbell_outlined),
              ),
            ),
            trailing: SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar
                (
                child: Icon(Icons.abc),
              ),
            ),
              subtitle: Text('UPI ID',  textAlign: TextAlign.left),

          ),


        ),
      ],
      ),
    ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
