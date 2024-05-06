import 'package:flutter/material.dart';

class Drawerpagestate extends StatefulWidget {
  const Drawerpagestate({super.key});

  @override
  State<Drawerpagestate> createState() => _DrawerpagestateState();
}

class _DrawerpagestateState extends State<Drawerpagestate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Drawer"),),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Container(
              color: Colors.blueGrey,
              child: const Text('Drawer Header'),
            ),),
            const ListTile(
              subtitle: Text("User profile"),
              title: Text("Profile"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.accessibility),
            ),
            const ListTile(
              title: Text("Settings"),
              trailing: Icon(Icons.settings_suggest_outlined),
              subtitle: Text("Change your settings"),
              leading: Icon(Icons.settings),
            ),
            const ListTile(
              title: Text("Contact Us"),
              leading: Icon(Icons.phone_iphone),
              trailing: Icon(Icons.call),
              subtitle: Text("make us a call"),
            ),
            const  ListTile(
              title: Text("Address"),
              leading: Icon(Icons.home_outlined),
              trailing: Icon(Icons.home_work),
              subtitle: Text("Visit us"),
            ),
            const  ListTile(
              title: Text("LogOut"),
              leading: Icon(Icons.logout),
              trailing: Icon(Icons.logout_sharp),
              subtitle: Text("Exit"),
            ),

          ],
        )
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog( barrierDismissible: false,
              context: context,
              builder: (BuildContext ontext) {
            return AlertDialog(
              title: const Text("Search"),
              content: SizedBox(
                height: 200,
                child:
                Column(
                  children: [
                    const ListTile(
                      title: Text('List tile 1'),
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    },
                child: const Text("back"))

                  ]
                ),
              ),
                );

              }
          );
    },
    ),

    );
  }
}
