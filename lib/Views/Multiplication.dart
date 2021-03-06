import 'package:flutter/material.dart';
import 'package:flutter_drawer_calculation/Views/Drawerdemo.dart';
import 'package:flutter_drawer_calculation/main.dart';



class Multiplication extends StatefulWidget {
  @override
  _MultiplicationState createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  String result="0";
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Multiplication Operation"),
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 30.0,),
                TextField(
                  style: TextStyle(color: Colors.deepOrangeAccent),
                  controller: num1,
                  decoration: InputDecoration(
                      hintText: "Enter first number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      prefixIcon: Icon(Icons.account_balance)

                  ),
                ),
                SizedBox(height: 30.0,),
                TextField(
                  style: TextStyle(color: Colors.deepOrangeAccent),
                  controller: num2,
                  decoration: InputDecoration(
                      hintText: "Enter second number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      prefixIcon: Icon(Icons.account_balance)

                  ),
                ),
                SizedBox(height: 30.0,),
                GestureDetector(
                  onTap: (){
                    var n1=int.parse(num1.text);
                    var n2=int.parse(num2.text);
                    var n3=n1*n2;
                    setState(() {
                      result=n3.toString();
                    });
                  },
                  child: Container(
                    height: 30.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.redAccent,Colors.green]),
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    child: Center(child: Text("MUL")),


                  ),
                ),
                SizedBox(height: 30.0,),
                Text(result,style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.deepPurple
                ),),
                SizedBox(height: 30.0,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
