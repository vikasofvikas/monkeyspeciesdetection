import 'package:flutter/material.dart';

import '../logic/bloc.dart';

//This is SearchBar.
class SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon:  Icon(Icons.search_outlined,size: 30,),
          hintText: 'Search Articles ',focusColor: Colors.redAccent.withOpacity(0.7),
        ),
        onChanged: (value) {
          bloc.feedSearchVal(value);
        },
      ),
      decoration: BoxDecoration(
      //  color: Color(0xffefefef),
        color: Colors.redAccent.withOpacity(0.3),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
