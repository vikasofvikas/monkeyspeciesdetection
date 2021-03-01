import 'package:flutter/material.dart';
import 'package:monkeyidentificationapp/scroll/constants.dart';
import 'package:monkeyidentificationapp/scroll/shared.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';

class Detail2 extends StatelessWidget {

  final Recipe2 recipe2;

  Detail2({@required this.recipe2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),

      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 70,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  buildTextTitleVariation1(recipe2.title),

                  buildTextSubTitleVariation1(recipe2.description),

                ],
              ),
            ),

            SizedBox(
              height: 16,
            ),

            Container(
              height: 310,
              padding: EdgeInsets.only(left: 16),
              child: Stack(
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      buildTextTitleVariation2('Nutritions', false),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe2.calories, "Weight", "pounds"),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe2.carbo, "Height", "inch"),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe2.protein, "AVG age", "years"),

                    ],
                  ),

                  Positioned(
                    right: -80,
                    child: Hero(
                      tag: recipe2.image,
                      child: Container(
                        height: 310,
                        width: 310,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(recipe2.image),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  buildTextTitleVariation2('Characteristics', false),

                  buildTextSubTitleVariation1(recipe2.characterstic1),
                  buildTextSubTitleVariation1(recipe2.characterstic2),
                  buildTextSubTitleVariation1(recipe2.characterstic3),

                  SizedBox(height: 16,),

                  buildTextTitleVariation2('Overview', false),

                  //   buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(recipe2.overview),
                ],
              ),
            ),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => recipe2.widget1),
            );

          },
          backgroundColor: Colors.red,
          icon: Icon(
            Icons.text_snippet_outlined,
            color: Colors.white,
            size: 30,
          ),
          label: Text(
            "More Information",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          )
      ),
    );
  }

  Widget buildNutrition(double value, String title, String subTitle){
    return Container(
      height: 60,
      width: 150,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [kBoxShadow],
            ),
            child: Center(
              child: Text(
                value.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(
            width: 20,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }


}