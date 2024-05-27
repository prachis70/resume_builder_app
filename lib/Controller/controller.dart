import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
// todo personal information
class Lord {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
}

// todo education
class Education {
  TextEditingController txtDegree = TextEditingController();
  TextEditingController txtUniversity = TextEditingController();
  TextEditingController txtScore = TextEditingController();
  TextEditingController txtYear = TextEditingController();
}

// todo skill
TextEditingController txtSkill = TextEditingController();
List listOfSkill = [txtSkill];

// todo experience
class Experience {
  TextEditingController txtCompany = TextEditingController();
  TextEditingController txtJob = TextEditingController();
  TextEditingController txtDetail = TextEditingController();
  TextEditingController txtStart = TextEditingController();
  TextEditingController txtEnd = TextEditingController();
}

// todo objective
TextEditingController txtObjective = TextEditingController();

// todo reference
class Reference {
  TextEditingController txtRefere = TextEditingController();
  TextEditingController txtjob = TextEditingController();
  TextEditingController txtCompanyName = TextEditingController();
  TextEditingController txtEMAIL = TextEditingController();
  TextEditingController txtPHONE = TextEditingController();
}
double heigth=0.030;
double width=0.030;
String skill = '';
