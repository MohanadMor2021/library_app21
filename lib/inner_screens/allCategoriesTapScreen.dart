import 'package:flutter/material.dart';
import 'package:library_app/items/favorit_item.dart';
import 'package:library_app/items/pdf_item.dart';

import '../DUMMYDATA.dart';





class AllCategoriesTapScreen extends StatefulWidget {
  @override
  _AllCategoriesTapScreenState createState() => _AllCategoriesTapScreenState();
}

class _AllCategoriesTapScreenState extends State<AllCategoriesTapScreen> {
  List <Meal> _availableMeals = DUMMY_MEALS;
  List <Meal> _favoriteMeals = [];
  void _toggleFavorite(String mealId){
    final existingIndex = _favoriteMeals.indexWhere((meal)=> meal.id == mealId);
    if(existingIndex >= 0){
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    }else{
      setState(() {
        _favoriteMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id == mealId));
        print('${_favoriteMeals[0].title} هدااااااااااااااااااااا   الميل ');
        print('${_favoriteMeals[1].title} هدااااااااااااااااااااا   الميل ');

      });
    }
  }


  @override
  Widget build(BuildContext context) {return   Center(
    child: ListView(
      children: DUMMY_MEALS.map((e) => FavoriteItem(_favoriteMeals,_toggleFavorite,e.id,e.title)).toList(),
    ),
  );
  }
}