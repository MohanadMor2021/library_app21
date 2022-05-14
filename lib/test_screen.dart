// import 'package:flutter/material.dart';
// import 'package:library_app/items/favorit_item.dart';
//
// import 'items/pdf_item.dart';
//
//
//   class TestScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         body: Center(
//           child: FavoriteItem(),
//         ),
//       ),
//     );
//   }
// }
//
//
// /*
//
// ListView.builder(
//           itemCount: homeList.length,
//           itemBuilder: (context , index){
//             return homeList.map((e) => HomeScreenItem(homeList[index])).toList()[index];
//           }
//         ),
//  */
//
//
//
//
//
//
//
//
//
//
// /*
//
//
// Scaffold(
//         drawer: MyDrawer(),
//         body: Center(
//           child: CustomScrollView(
//             slivers: [
//               SliverAppBar(
//                 actions: [
//                   Icon(Icons.search),
//                 ],
//                 backgroundColor: Colors.blue,
//                 expandedHeight: 100.h,
//                 floating: false,
//                 pinned: true,
//                 bottom: PreferredSize(
//                   // Add this code
//                   preferredSize: Size.fromHeight(60.0), // Add this code
//                   child: Padding(
//                     padding: EdgeInsets.only(bottom: 8.0),
//                     child: Text('test'),
//                   ), // Add this code
//                 ),
//                 // Add this code
// //                flexibleSpace: Container(
// //                  padding: EdgeInsets.all(10),
// //                  height: 340,
// //                  width: double.infinity,
// //                  child: Column(
// //                    mainAxisAlignment: MainAxisAlignment.end,
// //                    crossAxisAlignment: CrossAxisAlignment.start,
// //                    children: <Widget>[
// //                      Container(
// //                        height: 40,
// //                      ),
// //                      Container(
// //                        height: 60,
// //                      ),
// //                      Expanded(child: Container()),
// //                    ],
// //                  ),
// //
// //                ),
//               ),
//               SliverList(
//                 delegate: SliverChildListDelegate(
//                   [
//                     SingleChildScrollView(
//                       child: Column(
//
//                         children: [
//                           ListView.builder(
//                               shrinkWrap: true,
//                               physics: NeverScrollableScrollPhysics(),
//                               itemCount: 15,
//                               itemBuilder: (context,index){
//                                 return PdfItem();
//                               }
//                           ),
//
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//  */