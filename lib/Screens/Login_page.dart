import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

import '../Controller/controller.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

Lord lord = Lord();
GlobalKey<FormState> formkey = GlobalKey();

class _Login_pageState extends State<Login_page> {
  void _removeImage() {
    setState(() {
      fileImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            )),
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Profile_Details',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
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
          Expanded(
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      key: formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Photo ( Optional )\n',
                            style: TextStyle(
                                color: Colors.white, fontSize: height * 0.025),
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () async {
                                XFile? imagePath = await imagePicker.pickImage(
                                    source: ImageSource.gallery);
                                setState(() {
                                  fileImage = File(imagePath!.path);
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.deepPurple,
                                radius: width * 0.2,
                                backgroundImage: (fileImage == null)
                                    ? null
                                    : FileImage(fileImage!),
                                child: fileImage == null
                                    ? Icon(
                                        Icons.person,
                                        size: 120,
                                        color: Colors.white,
                                      )
                                    : null,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.020,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FilledButton(
                                  onPressed: () async {
                                    XFile? imagePath = await imagePicker
                                        .pickImage(source: ImageSource.gallery);
                                    setState(() {
                                      fileImage = File(imagePath!.path);
                                    });
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Colors.deepPurple,
                                    ),
                                  ),
                                  child: Text(
                                    'Change',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: height * 0.025,
                                        fontWeight: FontWeight.w400),
                                  )),
                              FilledButton(
                                  onPressed: () {
                                    _removeImage();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Colors.deepPurple,
                                    ),
                                  ),
                                  child: Text(
                                    'Remove',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: height * 0.025,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ],
                          ),
                          Text(
                            '\n Name',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: height * 0.020),
                          ),
                          TextFormField(
                              controller: lord.txtName,
                              style: TextStyle(color: Colors.black45),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 2)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 2.5)),
                                hintText: ' Enter Your name',
                                hintStyle: TextStyle(color: Colors.black45),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return "Can't be left blank";
                                }
                              }),
                          Text(
                            '\n Email',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: height * 0.020),
                          ),
                          TextFormField(
                              controller: lord.txtEmail,
                              style: TextStyle(color: Colors.black45),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 2)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 2.5)),
                                hintText: '  Prachis@Email.com',
                                hintStyle: TextStyle(color: Colors.black45),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return 'Err:Email!';
                                } else if (value.startsWith('@gmail.com')) {
                                  return 'Error!!!';
                                } else if (!value.contains('@gmail.com')) {
                                  return 'Error!!!" !';
                                } else if (!value.endsWith('@gmail.com')) {
                                  return 'Error!!!';
                                } else if (value.contains(' ')) {
                                  return 'Error!!!!';
                                } else if (value != value.toLowerCase()) {
                                  return 'Error!!!!';
                                }
                              }),
                          Text(
                            '\n Phone',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: height * 0.020),
                          ),
                          TextFormField(
                              controller: lord.txtPhone,
                              style: TextStyle(color: Colors.black45),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 2)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 2.5)),
                                hintText: '  9510953489',
                                hintStyle: TextStyle(color: Colors.black45),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return 'Error!!!';
                                } else if (value.length > 10 ||
                                    value.length < 10) {
                                  return 'Err:Phone!';
                                }
                              }),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
          Container(
            height: height * 0.190,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                width: width * 0.001,
                color: Colors.deepPurple,
              )),
              color: Color(0xFF363863),
            ),
            alignment: Alignment.center,
            child: Wrap(
              children: [
                GestureDetector(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.of(context).pushNamed('/info');
                    }
                  },
                  child: Container(
                    height: height * 0.055,
                    width: width * 0.450,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white70, width: 2),
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
                    Navigator.of(context).pushNamed('/switch');
                  },
                  child: Container(
                    height: height * 0.055,
                    width: width * 0.450,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF6F73C8), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          '  Add',
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
                        right: width * 0.030,
                        left: width * 0.030),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple,
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

int check = 0;
