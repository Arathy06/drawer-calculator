import 'package:flutter/material.dart';
import 'package:flutter_drawer_calculation/Views/Addition.dart';
import 'package:flutter_drawer_calculation/Views/Division.dart';
import 'package:flutter_drawer_calculation/Views/Multiplication.dart';
import 'package:flutter_drawer_calculation/Views/Subtraction.dart';
import 'package:flutter_drawer_calculation/Views/logout.dart';
import 'package:flutter_drawer_calculation/main.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Hero(tag: "propic", 
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://redtri.com/wp-content/uploads/2020/09/Jen-Dunham-Shutterstock.jpg"),
                )),
              accountName: Text("Arathy Anoop") ,
              accountEmail: Text("arathysree97@gmail.com"),
               ),

          
          Card(
            elevation: 10.0,
            child: ListTile(

              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));

               },
              title: Text("Profile"),
              trailing: Icon(Icons.person),
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Addition()));
              },
              title: Text("Addition"),
              trailing: Icon(Icons.add),
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Subtraction()));
              },
              title: Text("Substration"),
              trailing: Icon(Icons.minimize),
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Multiplication()));
              },
              title: Text("Multiplication"),
              trailing: Icon(Icons.star),
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Division()));
              },
              title: Text("Division"),
              trailing: Icon(Icons.star_half),
            ),
          ),

          Card(

            elevation: 10.0,
            child: ListTile(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Logout()));
              },
              title: Text("Logout"),
              trailing: Icon(Icons.account_circle),
            ),
          ),
        ],
      ),
    );
  }
}
