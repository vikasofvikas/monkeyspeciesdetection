import 'package:flutter/material.dart';

class about extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey,


      body:




      Container(


        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('assets/images/home.png'),
            fit: BoxFit.cover,
          ),
        ),



        padding: EdgeInsets.all(11.0),
        child: Column(

          

            children: [
              SizedBox(height: 15),


              SizedBox(height: 30),
              Text.rich(
                TextSpan(text: "In this app, you can detect various species of monkey right on your smartphone by just clicking or uploading a photo of the monkey. Our advanced AI system will detect the species of the monkey and will display the result instantly. We have trained our AI system on a large number of pictures of monkey species for the most accurate results and collected information about the species with the help of zoologists so that you can get accurate information at your fingertips.                                                                              "),
                style: new TextStyle(

height: 1.7,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0, color: Colors.red.withOpacity(0.8),
                ),
              ),


              SizedBox(height: 120),

              Text.rich(
                TextSpan(text: "by fouxa.com "),
                style: new TextStyle(
                  fontWeight: FontWeight.bold,


                  fontSize:12, color: Colors.redAccent,
                ),
              ),







            ]



        ),


      ),

    );
  }
}

