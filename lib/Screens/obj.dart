import 'package:flutter/material.dart';

import '../Controller/controller.dart';

class Obj_page extends StatefulWidget {
  const Obj_page({super.key});

  @override
  State<Obj_page> createState() => _Obj_pageState();
}

class _Obj_pageState extends State<Obj_page> {
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
          'Objective',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              fontSize: height * 0.030),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              //  controller: about.txtAddress,
              style: TextStyle(color: Colors.white),
              textInputAction: TextInputAction.next,
              maxLines: 5,
              controller: txtObjective,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Color(0xFF6F73C8), width: 2)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Color(0xFF6F73C8), width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                    BorderSide(color: Color(0xFF6F73C8), width: 2.5)),
              ),
            ),
          ),
          Container(
            height: height * 0.190,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                    width: width * 0.001,
                    color: Color(0xFF2F3154),
                  )),
              color: Color(0xFF363863),
            ),
            alignment: Alignment.center,
            child: Wrap(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/detail');
                  },
                  child: Container(
                    height: height * 0.055,
                    width: width * 0.390,
                    margin: EdgeInsets.only(top: 8, bottom: 8, left: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF6F73C8), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.remove_red_eye_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          '  Preview',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.025),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/example');
                  },
                  child: Container(
                    height: height * 0.055,
                    width: width * 0.500,
                    margin: EdgeInsets.only(top: 8, bottom: 8, left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF6F73C8), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.folder_copy_rounded,
                          color: Colors.white,
                          size: height * 0.025,
                        ),
                        Text(
                          '  Select Objecti...',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.025),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: height * 0.060,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        top: height * 0.015,
                        right: width * 0.035,
                        left: width * 0.035),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF6F73C8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}