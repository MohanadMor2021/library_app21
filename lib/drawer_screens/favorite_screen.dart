import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:library_app/components/constant.dart';
import 'package:library_app/components/my_drawer.dart';
import 'package:library_app/inner_screens/allCategoriesTapScreen.dart';
import 'package:library_app/inner_screens/favoriteTapScreen.dart';
import 'package:library_app/items/pdf_item.dart';



class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: primaryColor,
            drawer: MyDrawer(),

            body:  Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20,
                            left: MediaQuery.of(context).size.height * 0.4),
                        child: Builder(
                          builder: (BuildContext context) {
                            return IconButton(
                              icon: CircleAvatar(
                                backgroundColor:
                                Colors.grey.shade100.withOpacity(0.3),
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                              tooltip: MaterialLocalizations.of(context)
                                  .openAppDrawerTooltip,
                            );
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Image.asset("assets/images/logo.png"),
                      ),

                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 30.w),
                        child: Container(
                          height: 30.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TabBar(
                            indicator: BoxDecoration(
                              color: Color(0xff33ccff),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            tabs: [
                              Tab(
                               child: Text(
                                 "المفضلة",
                                 style: GoogleFonts.cairo(
                                   fontSize: 12.sp,
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                              ),

                              Tab(
                                child: Text(
                                  "كل الأقسام",
                                  style: GoogleFonts.cairo(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],

                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   mainAxisSize: MainAxisSize.max,
                   children: [
                     SizedBox(height: 20,),

                     Expanded(
                        child: TabBarView(
                          children: [
                            FavoriyeTapScreen(),
                            AllCategoriesTapScreen(),

                          ],
                        ),
                      ),
                   ],
                 ),
                ),
              ],
            ),



          ),
        ),
    );
  }
}



/*



Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 200,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                       tabs: [
                         Tab(text: "المفضلة",),
                         Tab(text: "كل الأقسام",),
                       ],

                    ),
                  ),
                ),

                SizedBox(height: 0,),

                Expanded(
                  child: TabBarView(
                    children: [
                      FavoriyeTapScreen(),
                      AllCategoriesTapScreen(),

                    ],
                  ),
                ),


              ],
            ),
 */