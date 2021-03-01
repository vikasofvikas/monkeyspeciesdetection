import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:monkeyidentificationapp/allspeciesinfo.dart';
import 'package:monkeyidentificationapp/articlesfirebase/pages/explore_page.dart';
import 'package:monkeyidentificationapp/detectdcreennew.dart';



class MyBottomNavigationBarDemo extends StatefulWidget {
  @override
  _MyBottomNavigationBarDemoState createState() =>
      _MyBottomNavigationBarDemoState();
}
class _MyBottomNavigationBarDemoState extends State<MyBottomNavigationBarDemo> {
 int pageIndex=1;
 final ExplorePage _explorePage = ExplorePage();
 final DetectMain _detectMain = DetectMain();

 final allspecies _allspecies = allspecies();

Widget _showPage =  DetectMain();

Widget _pageChooser(int page){
  switch (page){
    case 0:
      return _allspecies;
      break;
    case 1:
      return _detectMain;
    case 2:
      return _explorePage;


  }
}

  @override
  Widget build(BuildContext context) {


    return Scaffold(
backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        initialIndex:1,
        backgroundColor: Colors.transparent,
        color: Colors.redAccent.withOpacity(0.8),

        buttonBackgroundColor: Colors.red,
//height :50,
        animationDuration: Duration(
          milliseconds: 250,
        ),
     //index: 2,
        animationCurve: Curves.easeInOut,
        items: <Widget>[
        //  Icon(Icons.search, size: 3, color: Colors.white),
          Icon(Icons.blur_on_rounded, size: 30, color: Colors.white),
          Icon(Icons.search, size: 30, color: Colors.white),
          Icon(Icons.article_outlined, size: 30, color: Colors.white),
       //   Icon(Icons.search, size: 3, color: Colors.white),
        ],

        onTap: (int tappedIndex) {
setState(() {

  
  _showPage= _pageChooser(tappedIndex);

}
);

        },


      ),

      body: Container(

        color: Colors.transparent,
        child: Center(
          child: _showPage,
        ),
      ),

    );
  }
}