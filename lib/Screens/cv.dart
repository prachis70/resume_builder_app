
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cv extends StatefulWidget {
  const cv({super.key});

  @override
  State<cv> createState() => _cvState();
}

class _cvState extends State<cv> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF363863),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            )),
        backgroundColor: Color(0xFF363863),
        title: Text(
          'CV Create',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              fontSize: height * 0.030),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              Text(
                "Choose Cv's and build your own by on tap",
                style: TextStyle(
                    color: Color(0xFF8F92D1), fontSize: height * 0.025),
              ),
              Container(
                height: height * 0.3,
                width: width * 0.450,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFF6F73C8),
                  image: DecorationImage(
                      image: AssetImage("assets/images/cv2.jpg"),
                      fit: BoxFit.cover),
                ),
              ),

              Container(
                height: height * 0.3,
                width: width * 0.450,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFF6F73C8),
                  image: DecorationImage(
                      image: AssetImage("assets/images/cv2.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
