import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  
   var items = [    
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    ];
    String dropdownvalue='Item 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DROPDOWN BUTTON"),
      ),
      body: Center(
        child: DropdownButton(
         isExpanded: true,
          style: TextStyle(color: Colors.blue),
          dropdownColor: Colors.limeAccent,

          value: dropdownvalue,
        items: items.map(( items){
          return DropdownMenuItem(value: items,child: Text ( items));
        } ).toList(), 
        onChanged: ((String? newvalue) {
          
          setState(() {
            dropdownvalue=newvalue!;
          });
        })),
      ),
    );
  }
}