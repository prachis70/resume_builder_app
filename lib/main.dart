import 'package:flutter/material.dart';
import 'package:resume_builder_app/Controller/controller.dart';
import 'package:resume_builder_app/Screens/Education_page.dart';
import 'package:resume_builder_app/Screens/Experence_page.dart';
import 'package:resume_builder_app/Screens/Final_page.dart';
import 'package:resume_builder_app/Screens/Home_page.dart';
import 'package:resume_builder_app/Screens/Info_page.dart';
import 'package:resume_builder_app/Screens/Login_page.dart';
import 'package:resume_builder_app/Screens/Skill_page.dart';
import 'package:resume_builder_app/Screens/Splash_screen.dart';
import 'package:resume_builder_app/Screens/Switch.dart';
import 'package:resume_builder_app/Screens/cv.dart';
import 'package:resume_builder_app/Screens/obj.dart';
void main()
{
  runApp(Resume_App());
}
class  Resume_App extends StatelessWidget {
  const Resume_App ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) =>Splash_page(),
        '/home':(context) => Home_page(),
        '/login':(context) => Login_page(),
        '/sk':(context) =>SkillScreen(),
        '/st':(context) => Study(),
        '/ex':(context) => experience(),
        '/sw':(context) => switchScreen(),
        '/if':(context) => Info_page(),
        '/fp':(context) => Fpage(),
        '/ob':(context) => Obj_page(),
        '/c':(context) => cv(),
      },
    );
  }
}
