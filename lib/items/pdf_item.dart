import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:library_app/components/global_componnets.dart';
import 'package:library_app/dummy_data/pdf_files_datd.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:async';
import '../next_screen.dart';

class PdfItem extends StatefulWidget {

  final Pdf pdf;

      PdfItem(this.pdf);



     @override
  _PdfItemState createState() => _PdfItemState();
}

class _PdfItemState extends State<PdfItem> {

  int counter=0;

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  DateTime initDate;
  var resultDate=0;

  void sharePressed() {
    final names = "www.google.com";
    List<String> result = names.split(',').toList();

    Share.share('${widget.pdf.title} /n ${names}');
    /// optional subject that will be used when sharing to email
    // Share.share(message, subject: 'Become An Elite Flutter Developer');

    /// share a file
    // Share.shareFiles(['${directory.path}/image.jpg'], text: 'Great picture');
    /// share multiple files
    // Share.shareFiles(['${directory.path}/image1.jpg', '${directory.path}/image2.jpg']);
  }


  void _viewFile() async {
    final SharedPreferences prefs = await _prefs;
    print('      هدااااااااا الوقت بالدقائق  ${DateTime.now()}');
    var secoundDate=DateTime.parse( prefs.getString('date'));
    resultDate = DateTime.now().difference(secoundDate).inSeconds.toInt();
    if(counter<3){
    final _url =
        widget.pdf.pdfUrl;
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {

    }
   if( resultDate>30)
    setState(() {
      counter++;
      print('$counter هدااااااا الكونتر ');
    });
    }
    else{
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  NextScreen()),
      ).then((value)async {
        await  prefs.setString('date', DateTime.now().toIso8601String());
        print('تم التخزيييييييييييييييييييين');

counter=0;

      });
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
 _prefs=SharedPreferences.getInstance();

    var now =DateTime.now();
    initDate=now;
    // String formattedTime = DateFormat.Hm().format(now);
    print('هدا الوقت الحالي لما تدخل التطبيق   $now');

  }






  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w).add(EdgeInsets.only(top: 8.h , bottom: 2)),
          child: Column(
            children: [

              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: 70.0,
                      maxHeight: 170.0,
                    ),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,

                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
                      child: SizedBox(
                        width: 400,
                        child: myText(
                            widget.pdf.title,
                            13,
                            FontWeight.w600
                        ),
                      ),
                    ),),

                  widget.pdf.isNew ?   Image.asset("assets/images/new.png") : Container(),

                ],
              ),

              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),

                  )
                ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myPdfRowItem(
                          "تحميل",
                          Icon(Icons.arrow_circle_down , color: Colors.white,),
                            (){

                              showDialog(
                                context: context,
                               // barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    title : myText(
                                        "هل تريد بالتأكيد حفظ الملف ؟ ",
                                        14,
                                        FontWeight.w600,
                                    ),
                                    actions: <Widget>[

                                      TextButton(
                                        onPressed: () => Navigator.of(context).pop(),
                                        child:   Text(
                                          "إغلاق",
                                          style:  GoogleFonts.cairo(
                                            fontSize: 13.sp,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),

                                      TextButton(
                                        onPressed:  _viewFile,
                                        child:  Text(
                                          "تنزيل",
                                          style:  GoogleFonts.cairo(
                                            fontSize: 13.sp,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );


                            }
                        ),

                        myPdfRowItem(
                            "مشاركة",
                            Icon(Icons.share , color: Colors.white,),
                          sharePressed,
                        ),


                      ],
                    ),
                  ),
              ),

            ],
          ),
        ),

      ],
    );
  }
}




/*


Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 60.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(0, 7),
                blurRadius: 5.0,
                spreadRadius: 0),
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: Offset(5, 0),
                blurRadius:3.0,
                spreadRadius: 0),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Icon(
                Icons.download_outlined,
                color: Colors.black,
              ),
              SizedBox(
                width: 5.w,
              ),

              CircleAvatar(
                child: myText("200", 14, FontWeight.w600),
                backgroundColor: Colors.grey.shade300.withOpacity(0.5),
              ),

              SizedBox(width: 10,),

              SizedBox(
                width: 230.w,
                child:  myText(
                    "مذكرة لغة عربية مستر محمد صلاح شرح و تدريبات",
                    12,
                    FontWeight.w600
                ),
              ),

            ],
          ),
        ),
      ),
 */