// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Loginform extends StatelessWidget {
  const Loginform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text("Log in",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400, fontFamily: "Schyler"),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: 22),
                hintText: "Email",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.purple[100],
              borderRadius: BorderRadius.circular(40),
            ),
            margin: EdgeInsets.symmetric(horizontal: 55),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Password",
                hintStyle: TextStyle(fontSize: 22),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.purple[100],
            ),
            margin: EdgeInsets.symmetric(horizontal: 55),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: ElevatedButton(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 23),
              ),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple[500]),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35))),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 10, horizontal: 109)),
              ),
            ),
            // padding: EdgeInsets.symmetric(horizontal: 40),
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.home),
        onPressed:(){

         Navigator.pop(context);

      }
  
      ),
    );
  }
}
