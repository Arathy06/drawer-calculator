import 'package:flutter/material.dart';
import 'package:flutter_drawer_calculation/Views/Drawerdemo.dart';

void main()=> runApp(Homepage());

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
          Center(child: Text("CALCULATION"),),
          backgroundColor: Colors.cyan,
        ),
        drawer: MyDrawer(),
        body: Container(
          child:
          Center(child: Text("Arithematic Calculations are done here!!!!!")),
        ),
      ),
    );
  }
}
