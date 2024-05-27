import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Info_page extends StatefulWidget {
  const Info_page({super.key});

  @override
  State<Info_page> createState() => _Info_pageState();
}

class _Info_pageState extends State<Info_page> {
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
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Sections',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: 400,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 30,bottom: 20,left: 10,right: 10),
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF30325D),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Sections',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.030,
                                fontWeight: FontWeight.bold),
                          ),
                          Wrap(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/info');
                                  },
                                  child: buildContainer(
                                      height: height,
                                      width: width,
                                      icons: Icons.person,
                                      icons2: Icons.arrow_circle_right,
                                      text: 'Personal')),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/edu');
                                  },
                                  child: buildContainer(
                                      height: height,
                                      width: width,
                                      icons: Icons.school,
                                      icons2: Icons.arrow_circle_right,
                                      text: 'Education')),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/experience');
                                },
                                child: buildContainer(
                                    height: height,
                                    width: width,
                                    icons: Icons.work,
                                    icons2: Icons.arrow_circle_right,
                                    text: 'Experience'),
                              ),
                              SizedBox(
                                height: height * 0.020,
                                width: double.infinity,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/skill');
                                  },
                                  child: buildContainer(
                                      height: height,
                                      width: width,
                                      icons: Icons.stacked_bar_chart,
                                      icons2: Icons.arrow_circle_right,
                                      text: 'Skill')),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/objective');
                                },
                                child: buildContainer(
                                    height: height,
                                    width: width,
                                    icons: Icons.stacked_line_chart,
                                    icons2: Icons.arrow_circle_right,
                                    text: 'Objective'),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/reference');
                                },
                                child: buildContainer(
                                    height: height,
                                    width: width,
                                    icons: Icons.people_rounded,
                                    icons2: Icons.arrow_circle_right,
                                    text: 'Reference'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 400,
                      width: double.infinity,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF30325D),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'More Sections',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.030,
                                fontWeight: FontWeight.bold),
                          ),
                          Wrap(
                            children: [
                              buildContainer(
                                  height: height,
                                  width: width,
                                  icons: Icons.person,
                                  icons2: Icons.arrow_circle_right,
                                  text: 'Personal'),
                              buildContainer(
                                  height: height,
                                  width: width,
                                  icons: Icons.history_edu,
                                  icons2: Icons.arrow_circle_right,
                                  text: 'Education'),
                              buildContainer(
                                  height: height,
                                  width: width,
                                  icons: Icons.history_edu,
                                  icons2: Icons.arrow_circle_right,
                                  text: 'Experience'),
                              SizedBox(
                                height: height * 0.020,
                                width: double.infinity,
                              ),
                              buildContainer(
                                  height: height,
                                  width: width,
                                  icons: Icons.history_edu,
                                  icons2: Icons.arrow_circle_right,
                                  text: 'Skill'),
                              buildContainer(
                                  height: height,
                                  width: width,
                                  icons: Icons.history_edu,
                                  icons2: Icons.arrow_circle_right,
                                  text: 'Objective'),
                              buildContainer(
                                  height: height,
                                  width: width,
                                  icons: Icons.history_edu,
                                  icons2: Icons.arrow_circle_right,
                                  text: 'Reference'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: height * 0.060,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple             ),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                    size: height * 0.025,
                  ),
                  Text(
                    ' View CV',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.025,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer(
      {required double height,
        required double width,
        required IconData icons,
        required IconData icons2,
        required String text}) {
    return Container(
      height: height * 0.130,
      width: width * 0.285,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFFFDFDFD)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icons,
            color: Color(0xFF30325D),
            size: height * 0.040,
          ),
          Text(
            '$text',
            style:
            TextStyle(color: Color(0xFF30325D), fontSize: height * 0.020),
          ),
          Icon(
            icons2,
            color: Color(0xFF30325D),
            size: height * 0.030,
          ),
        ],
      ),
    );
  }
}