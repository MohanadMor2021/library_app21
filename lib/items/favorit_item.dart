import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:library_app/components/global_componnets.dart';
import 'package:library_app/drawer_screens/favorite_screen.dart';




class FavoriteItem extends StatefulWidget {
  final id ;
  final title;
  final _favoriteMeals;
  final Function _toggleFavoritel;
  FavoriteItem( this._favoriteMeals, this._toggleFavoritel, this.id, this.title);

  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  bool isFavorite=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w).add(EdgeInsets.only(top: 8.h , bottom: 2)),
      child: Container(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              myText(
                  "${widget.title}",
                  13,
                  FontWeight.w600
              ),


              IconButton(
                icon: Icon(isFavorite?Icons.favorite:Icons.favorite_border , size: 30, color: isFavorite?Colors.red:Colors.black54,),
                onPressed: (){
                  setState(() {
                    widget._toggleFavoritel(widget.id);

                    isFavorite = (!isFavorite) ;
                    print(widget.id);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}