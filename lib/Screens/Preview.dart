
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class template extends StatefulWidget {
  const template({super.key});

  @override
  State<template> createState() => _templateState();
}

class _templateState extends State<template> {

  Color _selectedColor = Colors.indigo;
  List<Color> _colors = [Colors.red, Colors.indigo, Colors.blue, Colors.deepPurpleAccent, Colors.black38];

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
          'Preview Template',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              fontSize: height * 0.030),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(5),
            height: height * 0.650,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.570,
                  width: width * 0.400,
                  color: _selectedColor,
                  child: Column(
                    children: [
                      Text(
                        'Lee jones',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        height: height * 0.070,
                        width: width * 0.160,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                      Container(
                        height: height*0.0270,
                        width: double.infinity,
                        color: Colors.black38,
                        alignment: Alignment.centerLeft,
                        child: Text(' Contact',style: TextStyle(color: Colors.white,fontSize: height*0.013,fontWeight: FontWeight.w500),),
                      ),
                      Row(children: [Icon(Icons.email,color: Colors.white,size: 13,),Text('  abc@gmail.com',style: TextStyle(fontWeight: FontWeight.w500,fontSize: height*0.013,color: Colors.white),)],),
                      Row(children: [Icon(Icons.call,color: Colors.white,size: 13,),Text('  +00 000 000',style: TextStyle(fontWeight: FontWeight.w500,fontSize: height*0.013,color: Colors.white),)],),
                      Row(children: [Icon(Icons.location_on,color: Colors.white,size: 13,),Text('  Paris, France',style: TextStyle(fontWeight: FontWeight.w500,fontSize: height*0.013,color: Colors.white),)],),
                      Container(
                        height: height*0.0270,
                        width: double.infinity,
                        color: Colors.black38,
                        alignment: Alignment.centerLeft,
                        child: Text(' Skills',style: TextStyle(color: Colors.white,fontSize: height*0.013,fontWeight: FontWeight.w500),),
                      ),
                      Text('Skill 1                               80%',style: TextStyle(color: Colors.white,fontSize: height*0.013,fontWeight: FontWeight.w500),),
                      Container(
                        height: height*0.015,
                        width: double.infinity,
                        padding: EdgeInsets.only(right: 35),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          height: height*0.010,
                          width: width*0.005,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      Text('Skill 2                               40%',style: TextStyle(color: Colors.white,fontSize: height*0.013,fontWeight: FontWeight.w500),),
                      Container(
                        height: height*0.015,
                        width: double.infinity,
                        padding: EdgeInsets.only(right: 80),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          height: height*0.010,
                          width: width*0.005,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      Text('Skill 3                               100%',style: TextStyle(color: Colors.white,fontSize: height*0.013,fontWeight: FontWeight.w500),),
                      Container(
                        height: height*0.015,
                        width: double.infinity,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          height: height*0.010,
                          width: width*0.005,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      Container(
                        height: height*0.0270,
                        width: double.infinity,
                        color: Colors.black38,
                        alignment: Alignment.centerLeft,
                        child: Text(' Languages',style: TextStyle(color: Colors.white,fontSize: height*0.013,fontWeight: FontWeight.w500),),
                      ),
                      Text('English\nFrench\nSpanish                               ',style: TextStyle(color: Colors.white,fontSize: height*0.013,fontWeight: FontWeight.w500),),
                      Container(
                        height: height*0.0270,
                        width: double.infinity,
                        color: Colors.black38,
                        alignment: Alignment.centerLeft,
                        child: Text(' Interests',style: TextStyle(color: Colors.white,fontSize: height*0.013,fontWeight: FontWeight.w500),),
                      ),
                      Text('Teambuilding\nSinging\nPlaying Sports                     ',style: TextStyle(color: Colors.white,fontSize: height*0.013,fontWeight: FontWeight.w500),),
                      Container(
                        height: height*0.0270,
                        width: double.infinity,
                        color: Colors.black38,
                        alignment: Alignment.centerLeft,
                        child: Text(' Activities',style: TextStyle(color: Colors.white,fontSize: height*0.013,fontWeight: FontWeight.w500),),
                      ),
                      Text(' IT Club, ABC University          ',style: TextStyle(color: Colors.white,fontSize: height*0.013,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
                  Container(
                    height: height*0.090,
                    width: width*0.490,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(top: BorderSide(color: Colors.grey,width: 1),bottom: BorderSide(color: Colors.grey,width: 1)),
                    ),
                    child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [Text(' OBJECTIVE',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(' Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Curabitur vitae turpis ac mi \n tincidunt sagittis et non tellus. Duis porta \n dapibus consectetur.',style: TextStyle(fontSize: height*0.010,fontWeight: FontWeight.w500),),
                    ],),
                  ),
                  Container(
                    height: height*0.180,
                    width: width*0.490,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                    ),
                    child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [Text(' Experience',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(' Company Name\n Job Name\n Lorem ipsum dolor sit amet, elit.',style: TextStyle(fontSize: height*0.012,fontWeight: FontWeight.w500),),
                      Text(' Company Name\n Job Name\n Lorem ipsum dolor sit amet, elit.',style: TextStyle(fontSize: height*0.012,fontWeight: FontWeight.w500),),
                      Text(' Company Name\n Job Name\n Lorem ipsum dolor sit amet, elit.',style: TextStyle(fontSize: height*0.012,fontWeight: FontWeight.w500),),
                    ],),
                  ),
                  Container(
                    height: height*0.080,
                    width: width*0.490,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                    ),
                    child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [Text(' Education',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('  SCHOOL NAME',style: TextStyle(color: Colors.indigo,fontSize: height*0.012,fontWeight: FontWeight.bold),),
                      Text('  COURSE\n  4.0',style: TextStyle(color: Colors.black,fontSize: height*0.012,fontWeight: FontWeight.bold),),
                    ],),
                  ),
                  Container(
                    height: height*0.100,
                    width: width*0.490,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                    ),
                    child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [Text(' Project',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('  Project NAME',style: TextStyle(color: Colors.indigo,fontSize: height*0.012,fontWeight: FontWeight.bold),),
                      Text(' Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Curabitur vitae turpis ac mi \n tincidunt sagittis et non tellus.',style: TextStyle(fontSize: height*0.010,fontWeight: FontWeight.w500),),
                    ],),
                  ),
                  Text('  REFERENCE',style: TextStyle(color: Colors.black,fontSize: height*0.012,fontWeight: FontWeight.bold),),
                  Text('  Mr.A',style: TextStyle(color: Colors.indigo,fontSize: height*0.012,fontWeight: FontWeight.bold),),
                  Text('  Sales Director of ABC Comapany\n  abc@gmail.com\n  0123456',style: TextStyle(color: Colors.black,fontSize: height*0.012,fontWeight: FontWeight.bold),),
                ],),
              ],
            ),
          ),
          SizedBox(height: height*0.045,),
          Row(children: [
            SizedBox(width: width*0.2,),
            ...List.generate(_colors.length, (index) => buildGestureDetector(height, width,_colors[index]),)
          ],),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/profile');
            },
            child: Container(
              height: height * 0.060,
              width: double.infinity,
              margin: EdgeInsets.only(
                  top: height * 0.015,
                  right: width * 0.030,
                  left: width * 0.030),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF6F73C8),
              ),
              alignment: Alignment.center,
              child: Text(
                'Continue',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: height * 0.025,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildGestureDetector(double height, double width,Color color) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedColor=color;
        });
      },
      child: Container(
        height: height*0.0400,
        width: width*0.090,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color
        ),
      ),
    );
  }
}
