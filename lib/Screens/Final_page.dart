
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder_app/Screens/Login_page.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;


class Fpage extends StatefulWidget {
  const Fpage({super.key});

  @override
  State<Fpage> createState() => _FpageState();
}

class _FpageState extends State<Fpage> {

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
      body:PdfPreview(build: (formate)=>generatepdf(height,width),),
    );
  }
}


Future<Uint8List> generatepdf(double height,double width) async {
  final pdf = pw.Document();

  final image1 = await imageFromAssetBundle('assets/images/email.png');
  final image2 = await imageFromAssetBundle('assets/images/call.png');
  final image3 = await imageFromAssetBundle('assets/images/location.png');



  pdf.addPage(pw.Page(
    build: (context) => pw.Row(children: [
      pw.Container(
        height: height*0.700,
        width: width*0.530,
        color: PdfColors.indigo,
        child: pw.Column(children: [
          pw.Text(lord.txtName.text,style: pw.TextStyle(color: PdfColors.white,fontSize: height*0.027 )),
          pw.Container(
            height: height * 0.150,
            width: width * 0.300,
            margin: pw.EdgeInsets.all(5),
            decoration: pw.BoxDecoration(
              color: PdfColors.green,
              borderRadius: pw.BorderRadius.circular(7),
            ),
            child: pw.Text('nothing'),
          ),
          pw.Container(
            height: height*0.0280,
            width: double.infinity,
            color: PdfColors.grey700,
            alignment: pw.Alignment.centerLeft,
            child: pw.Text(' Contact',style: pw.TextStyle(color: PdfColors.white,fontSize: height*0.018),),
          ),
          pw.Row(children: [pw.Image(image1, fit: pw.BoxFit.cover,height: height*0.025,width: width*0.050),pw.Text('  ${lord.txtEmail.text}',style: pw.TextStyle(fontSize: height*0.020,color: PdfColors.white),)],),
          pw.Row(children: [pw.Image(image2,fit: pw.BoxFit.cover,height: height*0.025,width: width*0.050),pw.Text('  ${lord.txtPhone.text}',style: pw.TextStyle(fontSize: height*0.020,color: PdfColors.white),)],),
          pw.Row(children: [pw.Image(image3, fit: pw.BoxFit.cover,height: height*0.025,width: width*0.050),pw.Text('  ${lord.txtAddress.text}',style: pw.TextStyle(fontSize: height*0.020,color: PdfColors.white),)],),
          pw.Container(
            height: height*0.0280,
            width: double.infinity,
            color: PdfColors.grey700,
            alignment: pw.Alignment.centerLeft,
            child: pw.Text(' Skills',style: pw.TextStyle(color: PdfColors.white,fontSize: height*0.018),),
          ),
          pw.Text('Skill 1                        80%',style: pw.TextStyle(color: PdfColors.white,fontSize: height*0.020),),
          pw.Container(
            height: height*0.015,
            width: double.infinity,
            padding: pw.EdgeInsets.only(right: 35),
            margin: pw.EdgeInsets.all(5),
            decoration: pw.BoxDecoration(
              color: PdfColors.grey700,
              borderRadius: pw.BorderRadius.circular(5),
            ),
            child: pw.Container(
              height: height*0.010,
              width: width*0.005,
              decoration: pw.BoxDecoration(
                color: PdfColors.white,
                borderRadius: pw.BorderRadius.circular(5),
              ),
            ),
          ),
        ]),
      ),

    ],),
  ));
  return pdf.save();
}
