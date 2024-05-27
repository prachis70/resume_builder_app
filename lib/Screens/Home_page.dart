import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login_page.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Resume Builder',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.picture_as_pdf,
                color: Colors.white,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
      body: Column(
        children: [
          Text(
            '\n\n\nName',
           // style: TextStyle(color: Colors.black87, fontSize: height * 0.020),
          ),
          TextFormField(
              controller: lord.txtName,
              style: TextStyle(color: Colors.black87),
              // textInputAction: TextInputAction.next,
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return "Can't be left blank";
                }
              }),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pushNamed('/login');
              });
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
