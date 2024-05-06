import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {

  var dropValue = 'menu';

  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropDown"),),
      body:Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context){
                        return StatefulBuilder(
                            builder: (BuildContext context, StateSetter setState) {
                              return
                                Container(
                                  width: 300,
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: isChecked,
                                        onChanged: (value) {
                                          setState(() {
                                            print("onChanged Value ${value}");
                                            isChecked = value!;
                                            print("onChanged Value ${isChecked}");
                                          });
                                        },
                                      ),
                                      Text("Are you want Register?")
                                    ],
                                  ),
                                );
                            });
                      });
                },
                child: Text("Text")),

            DropdownButton(
              icon: Icon(Icons.arrow_downward),
              elevation: 5,
              isExpanded: true,
              autofocus: true,
              dropdownColor: Colors.blue,
              value: dropValue,
              items: ['menu','Text 1','Text 2','Text 3'].map((e) {
                return DropdownMenuItem(
                    value: e,
                    child: Row(
                        children :[
                          Checkbox(value: true, onChanged: (value){}),
                          Text(e) ]));
              }).toList(),
              onChanged: (value){
                setState(() {
                  dropValue=value!;
                });
              },
              isDense: true,
            ),

          ],
        ),
      ),
    );
  }
}

