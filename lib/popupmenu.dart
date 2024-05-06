import 'package:flutter/material.dart';

class PopupMenuButtonViewPage extends StatefulWidget {
  const PopupMenuButtonViewPage({super.key});

  @override
  State<PopupMenuButtonViewPage> createState() => _PopupMenuButtonViewPageState();
}

class _PopupMenuButtonViewPageState extends State<PopupMenuButtonViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popup menu Button"),
        actions: [
          PopupMenuButton(

              onSelected: (value){
                print("On tap Select Value ${value}");
              },
              itemBuilder: (BuildContext context)=>[
                const PopupMenuItem(
                    value: 1,
                    child: Row(
                      children: [
                        Icon(Icons.person_2_outlined),
                        Text("Profile"),
                      ],
                    )),
                const PopupMenuItem(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(Icons.edit),
                        Text("Edit"),
                      ],
                    )),
              ])
        ],
      ),
    );
  }
}
