
import 'package:flutter/material.dart';
import '../Controller/controller.dart';

class SkillScreen extends StatefulWidget {
  const SkillScreen({super.key});

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  int _selectedLevel = 1;

  void _handleLevelChange(int? value) {
    setState(() {
      _selectedLevel = value!;
    });
  }

  void _clearText(int index) {
    listOfSkill[index].clear();
  }

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
          'Skill',
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
          Expanded(
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      children: List.generate(
                        listOfSkill.length,
                            (index) => Container(
                          height: height * 0.340,
                          width: double.infinity,
                          padding: EdgeInsets.all(15),
                          color: Color(0xFF363863),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Skill ${index + 1}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: height * 0.025),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (index != 0) {
                                            listOfSkill.removeAt(index);
                                          } else {
                                            _clearText(index);
                                          }
                                        });
                                      },
                                      icon: Icon(
                                        Icons.remove_from_queue_rounded,
                                        color: Colors.white,
                                        size: height * 0.035,
                                      ))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 15),
                                child: TextFormField(
                                    controller: listOfSkill[index],
                                    style: TextStyle(color: Colors.white),
                                    maxLines: 3,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Color(0xFF6F73C8), width: 2)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Color(0xFF6F73C8),
                                              width: 2.5)),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ))),
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
                Container(
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
                GestureDetector(
                  onTap: () {
                    TextEditingController txtSkill = TextEditingController();
                    setState(() {
                      listOfSkill.add(txtSkill);
                    });
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

  Column selectLevel(int level) {
    return Column(
      children: <Widget>[
        Radio<int>(
          value: level,
          groupValue: _selectedLevel,
          onChanged: _handleLevelChange,
          fillColor: MaterialStateProperty.all<Color>(Colors.white),
          activeColor: Colors.white,
        ),
        Text(
          '$level',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

