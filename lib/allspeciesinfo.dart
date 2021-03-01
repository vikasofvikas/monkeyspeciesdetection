import 'dart:io';
import 'package:flutter/material.dart';

import 'package:monkeyidentificationapp/scroll/detail2.dart';



import 'package:monkeyidentificationapp/scroll/constants.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';
import 'package:monkeyidentificationapp/scroll/detail.dart';
import 'package:monkeyidentificationapp/scroll/shared.dart';







class allspecies extends StatefulWidget {
  @override
  _DetectMainState createState() => new _DetectMainState();
}


class _DetectMainState extends State<allspecies> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(



backgroundColor: Colors.white,



        body:

        SingleChildScrollView(



        physics: BouncingScrollPhysics(),


    child:
    Container(
    decoration: BoxDecoration(
   /* image: DecorationImage(
    image: AssetImage("assets/images/home.png"), fit: BoxFit.cover) //////////////////add background photograph here ////////
*/
    ),


    child:
    Column(
    children: <Widget>[
      SizedBox(height:49),





      Padding(
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            buildTextTitleVariation1('Explore monkey species'),


          ],
        ),
      ),








      Container(
        height: 300,
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: buildRecipes(),
        ),
      ),

      SizedBox(
        height: 16,
      ),

      Container(
        height: 300,
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: buildRecipes2(),
        ),
      ),





      ]
    ),




        ),





        ),









    );


  }




  List<Widget> buildRecipes(){
    List<Widget> list = [];
    for (var i = 0; i < getRecipes().length; i++) {
      list.add(buildRecipe(getRecipes()[i], i));
    }
    return list;
  }

  List<Widget> buildRecipes2(){
    List<Widget> list2 = [];
    for (var i = 0; i < getRecipes2().length; i++) {
      list2.add(buildRecipe2(getRecipes2()[i], i));
    }
    return list2;
  }




  Widget buildRecipe(Recipe recipe, int index){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail(recipe: recipe)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [kBoxShadow],
        ),
        margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0, bottom: 16, top: 8),
        padding: EdgeInsets.all(12),
        width: 200,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Expanded(
              child: Hero(
                tag: recipe.image,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(recipe.image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 8,
            ),

            buildRecipeTitle(recipe.title),

            buildTextSubTitleVariation2(recipe.description),



          ],
        ),
      ),
    );
  }



///////////////////////////////////////////////////////////22222222222222222222////////////////////////




  Widget buildRecipe2(Recipe2 recipe2, int index2){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail2(recipe2: recipe2)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [kBoxShadow],
        ),
        margin: EdgeInsets.only(right: 16, left: index2 == 0 ? 16 : 0, bottom: 16, top: 8),
        padding: EdgeInsets.all(12),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Expanded(
              child: Hero(
                tag: recipe2.image,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(recipe2.image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 14,
            ),

            buildRecipeTitle(recipe2.title),

            buildTextSubTitleVariation2(recipe2.description),



          ],
        ),
      ),
    );
  }

















}


