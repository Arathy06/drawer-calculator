import 'package:flutter/material.dart';
import 'package:flutter_drawer_calculation/Views/Drawerdemo.dart';


class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(),
        body: Container(
          child: Center(child: Text("Successfully logout....")),
        ),
      ),
    );
  }
}
