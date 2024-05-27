import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash_page extends StatefulWidget {
  const Splash_page({super.key});

  @override
  State<Splash_page> createState() => _Splash_pageState();
}

class _Splash_pageState extends State<Splash_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash_Screen', style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 130),
              child: GestureDetector(onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
                child: Container(
                  height: 270,
                  width: 270,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepPurple,width: 4),
                   borderRadius: BorderRadius.circular(30),
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage('assets/logo.jpg'),
                   ) ,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
