import 'package:flutter/material.dart';
import 'package:library_app/items/favorit_item.dart';
import 'package:library_app/items/pdf_item.dart';



class FavoriyeTapScreen extends StatefulWidget {
  @override
  _FavoriyeTapScreenState createState() => _FavoriyeTapScreenState();
}

class _FavoriyeTapScreenState extends State<FavoriyeTapScreen> {
  @override
  Widget build(BuildContext context) {
    return
       ListView.builder(
        itemCount: 10,
        itemBuilder: (context , index){
            return Text('');
        }

    );
  }
}
