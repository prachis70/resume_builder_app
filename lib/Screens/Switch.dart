import 'package:flutter/material.dart';

class switchScreen extends StatefulWidget {
  const switchScreen({super.key});

  @override
  State<switchScreen> createState() => _switchScreenState();
}

class _switchScreenState extends State<switchScreen> {
  bool photo = true;
  bool dob = false;
  bool nationality = false;
  bool status = false;
  bool web = false;
  bool linkedin = false;
  bool facebook = false;
  bool twitter = false;

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
          'Add More Personal Info',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: height * 0.030),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Click switch button to Enable / Disable any profile fields',
              style:
              TextStyle(color: Color(0xFF8F92D1), fontSize: height * 0.025),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Photo (Optional)',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: photo,
                    onChanged: (value) {
                      setState(() {
                        photo = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Date of Birth',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: dob,
                    onChanged: (value) {
                      setState(() {
                        dob = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nationality',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: nationality,
                    onChanged: (value) {
                      setState(() {
                        nationality = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Marital Status',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: status,
                    onChanged: (value) {
                      setState(() {
                        status = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Website',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: web,
                    onChanged: (value) {
                      setState(() {
                        web = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Linkedin',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: linkedin,
                    onChanged: (value) {
                      setState(() {
                        linkedin = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Facebook',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: facebook,
                    onChanged: (value) {
                      setState(() {
                        facebook = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Twitter',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: twitter,
                    onChanged: (value) {
                      setState(() {
                        twitter = value;
                      });
                    })
              ],
            ),
            SizedBox(
              height: height * 0.200,
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
    );
  }
}