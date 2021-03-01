
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monkeyidentificationapp/about.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';

import 'package:monkeyidentificationapp/scroll/shared.dart';
class DetectMain extends StatefulWidget {


  @override
  _DetectMainState createState() => new _DetectMainState();
}

class _DetectMainState extends State<DetectMain> {
  List<bool> optionSelected = [true, false, false];
  File _image;
  double _imageWidth;
  double _imageHeight;
  var _recognitions;

  loadModel() async {
    Tflite.close();
    try {
      String res;
      res = await Tflite.loadModel(
        model: "assets/model_unquant.tflite",
        labels: "assets/labels.txt",
      );
      print(res);
    } on PlatformException {
      print("Failed to load the model");
    }
  }

  // run prediction using TFLite on given image
  Future predict(File image) async {

    var recognitions = await Tflite.runModelOnImage(
        path: image.path,   // required
        imageMean: 0.0,   // defaults to 117.0
        imageStd: 255.0,  // defaults to 1.0
        numResults: 2,    // defaults to 5
        threshold: 0.2,   // defaults to 0.1
        asynch: true      // defaults to true
    );

    print(recognitions);

    setState(() {
      _recognitions = recognitions;
      //String goti= _recognitions[0]['label'];
    });

  }

  // send image to predict method selected from gallery or camera
  sendImage(File image) async {
    if(image == null) return;
    await predict(image);

    // get the width and height of selected image
    FileImage(image).resolve(ImageConfiguration()).addListener((ImageStreamListener((ImageInfo info, bool _){
      setState(() {
        _imageWidth = info.image.width.toDouble();
        _imageHeight = info.image.height.toDouble();
        _image = image;
      });
    })));
  }

  // select image from gallery
  selectFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if(image == null) return;
    setState(() {

    });
    sendImage(image);
  }

  // select image from camera
  selectFromCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    if(image == null) return;
    setState(() {

    });
    sendImage(image);
  }

  @override
  void initState() {
    super.initState();

    loadModel().then((val) {
      setState(() {});
    });
  }


  Widget printValue(rcg) {
    if (rcg == null) {
      return Text('', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700));
    }else if(rcg.isEmpty){
      return Center(
        child: Text("Could not recognize", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
      );
    }

    double confidence = _recognitions[0]['confidence']*100;
    ///////////////////////////////////////////////////////////PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP
//String goti= _recognitions[0]['label'];

///////////////////////////////////////////////////////////////////PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP
    return
      Column(

      children:[

        Text(

          // "Predictions:"+confidence.toStringAsFixed(2)+"%"+_recognitions[0]

          "Result: "+confidence.toStringAsFixed(2)+"% "+_recognitions[0] ['label'].toString().toUpperCase(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.redAccent),
        ),

                Padding(
                 padding: EdgeInsets.fromLTRB(0,0,0,0),

                 child:   _recognitions[0] ['label'].toString().toUpperCase()=='PATAS MONKEY'?   patasmonkey()


      :
        _recognitions[0] ['label'].toString().toUpperCase()=='MANTLED HOWLER'?   mantledhowler()

        :_recognitions[0] ['label'].toString().toUpperCase()=='BALD UAKARI'?   balduakari()

            :_recognitions[0] ['label'].toString().toUpperCase()=='JAPANESE MACAQUE'?   japanesemacaque()

            :_recognitions[0] ['label'].toString().toUpperCase()=='PYGMY MARMOSET'?   pygmymarmoset()

            :_recognitions[0] ['label'].toString().toUpperCase()=='WHITE HEADED CAPUCHIN'?   whiteheadedcapuchin()

            :_recognitions[0] ['label'].toString().toUpperCase()=='SILVERY MARMOSET'?   silverymarmoset()

            :_recognitions[0] ['label'].toString().toUpperCase()=='SQUIRREL MONKEY'?   commonsquirrelmonkey()

            :_recognitions[0] ['label'].toString().toUpperCase()=='BLACK HEADED NIGHT MONKEY'?   blackheadednightmonkey()

            :_recognitions[0] ['label'].toString().toUpperCase()=='NILGIRI LANGUR'?   nilgirilangur()




:
    Center(child:buildTextTitleVariation4('Try again'),)


    )



      ]

      );
  }

/*Center(
        child: Text(

          // "Predictions:"+confidence.toStringAsFixed(2)+"%"+_recognitions[0]

            "Result: "+confidence.toStringAsFixed(2)+"% "+_recognitions[0] ['label'].toString().toUpperCase(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.redAccent),
        ),
      ),*/

  // gets called every time the widget need to re-render or build
  @override
  Widget build(BuildContext context) {

    // get the width and height of current screen the app is running on
    Size size = MediaQuery.of(context).size;

    // initialize two variables that will represent final width and height of the segmentation
    // and image preview on screen
    double finalW;
    double finalH;

    // when the app is first launch usually image width and height will be null
    // therefore for default value screen width and height is given
    if(_imageWidth == null && _imageHeight == null) {
      finalW = size.width;
      finalH = size.height;
    }else {

      // ratio width and ratio height will given ratio to
//      // scale up or down the preview image
      double ratioW = size.width / _imageWidth;
      double ratioH = size.height / _imageHeight;

      // final width and height after the ratio scaling is applied
      finalW = _imageWidth * ratioW*.55;
      finalH = _imageHeight * ratioH*.20;
    }

//    List<Widget> stackChildren = [];

//////////////////////////////////////////////////////

 /*   if(_recognitions == 'patas monkey'){

      build1(BuildContext context),


    }

*/

////////////////////////////////////////////////


var ert =_recognitions;

//var ass ='patas monkey';

//String hexo = ert.toString();
   // String hexo = 'PATAS MONKEY';

  /*  double bella() {
      double roi = _recognitions[0] ['label'];

      return roi;


    }*/

    return Scaffold(




      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(

            color: Colors.green //change your color here
        ),
        title: buildTextTitleVariation3('Monkey Species Detector'),
        backgroundColor: Colors.redAccent.withOpacity(0.8),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[

          IconButton(
            icon: Icon(
              Icons.track_changes,
              color: Colors.white,
            ),
            onPressed: ()  {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => about(),),
              );

            },
          ),


        ],




      ),
      body:
      Container(
        height: 1250,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/home.png"), fit: BoxFit.cover) //////////////////add background photograph here ////////

        ),
      child:
      SingleChildScrollView(



        physics: BouncingScrollPhysics(),





        child:
        Column(
          children: [
////////////////////////////////////////////////////monkey app original/////////////




                  SizedBox(height:15),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10,70,10,0),
                    child: _image == null ? Center(child:  buildTextTitleVariation4('Select Image'),
                    )

                        : Center(child: Image.file(_image, fit: BoxFit.fill, width: finalW, height: finalH),),
                  ),


            SizedBox(height:16),
///////////////////////////////////////////////////////////real stuff///
            Padding(
              padding: EdgeInsets.fromLTRB(0,1,0,1),
              child: printValue(_recognitions),
            ),
///////////////////////////////////////////////////////////real stuff///
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                        child: Container(

                          color: Colors.transparent,                          height: 50,
                          width: 200,
//  color: Colors.redAccent,

child:
FlatButton.icon(
  shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(15.0),
      side: BorderSide(color: Colors.redAccent)),

  color: Colors.white.withOpacity(0.7),
  textColor: Colors.red,
  padding: EdgeInsets.all(8.0),
  onPressed: selectFromCamera,
  icon: Icon(Icons.camera_alt, color: Colors.redAccent, size: 31,),
  label: Text(
    " Take Photo    ",style: TextStyle(color: Colors.redAccent, fontSize: 15, fontWeight: FontWeight.bold),
  ),
),




                          margin: EdgeInsets.fromLTRB(0, 1, 0, 10),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                      child:
                      Container(
                        height: 50,
                        width: 200,
                        color: Colors.transparent,
                        child: FlatButton.icon(
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: Colors.redAccent)),

                          color: Colors.white.withOpacity(0.7),
                          textColor: Colors.red,
                          padding: EdgeInsets.all(8.0),
                          onPressed: selectFromGallery,
                          icon: Icon(Icons.file_upload, color: Colors.red, size: 32,),
                          label: Text(
                            "Upload Photo",style: TextStyle(color: Colors.red, fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 10),
                      ),

                      ),


//SizedBox(height:750),
                    ],
                  ),

/////////////////////////////////////////monkey app original ///////////////////////

          ],


        ),


      ),
    ),
    );

  }



  ////////////////////////////////////////////////                INFORMATION CARD OF MONKEYS             ////////////////////////

  Widget balduakari( ){
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.redAccent.withOpacity(0.5), width: 5),
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/balduakari.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  buildRecipeTitle('Bald Uakari'),

                  buildRecipeSubTitle('Cacajao calvus'),

                  ///////////////////////////////////THREE BUTTONS//////////////////////
                  Stack(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                         // buildTextTitleVariation2('Facts', false),

                          SizedBox(
                            height: 4,
                          ),

                          buildNutrition(5.2, "Weight", "pounds"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(18.5, "Height", "inch"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(30, "AVG age", "years"),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),


                    ],
                  ),


                ],
              ),
            ),
          ),

        ],
      ),
    );
  }


  Widget patasmonkey( ){
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent.withOpacity(0.5), width: 5),
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/patasmonkey.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  buildRecipeTitle('Patas Monkey'),

                  buildRecipeSubTitle('Hussar monkeys'),

                  ///////////////////////////////////THREE BUTTONS//////////////////////
                  Stack(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // buildTextTitleVariation2('Facts', false),

                          SizedBox(
                            height: 4,
                          ),

                          buildNutrition(22.5, "Weight", "pounds"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(30, "Height", "inch"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(22, "AVG age", "years"),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),


                    ],
                  ),


                ],
              ),
            ),
          ),

        ],
      ),
    );
  }


  Widget mantledhowler( ){
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent.withOpacity(0.5), width: 5),
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/mantledhowler.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  buildRecipeTitle('Mantled Howler'),

                  buildRecipeSubTitle('Ecuadorian mantled howling monkeys'),

                  ///////////////////////////////////THREE BUTTONS//////////////////////
                  Stack(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // buildTextTitleVariation2('Facts', false),

                          SizedBox(
                            height: 4,
                          ),

                          buildNutrition(15, "Weight", "pounds"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(23, "Height", "inch"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(17, "AVG age", "years"),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),


                    ],
                  ),


                ],
              ),
            ),
          ),

        ],
      ),
    );
  }


  Widget japanesemacaque( ){
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent.withOpacity(0.5), width: 5),
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/japanesemacaque.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  buildRecipeTitle('Japanese Macaque'),

                  buildRecipeSubTitle('snow monkeys'),

                  ///////////////////////////////////THREE BUTTONS//////////////////////
                  Stack(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // buildTextTitleVariation2('Facts', false),

                          SizedBox(
                            height: 4,
                          ),

                          buildNutrition(11.3, "Weight", "pounds"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(22, "Height", "inch"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(24, "AVG age", "years"),
                          SizedBox(
                            height: 16,),],),],),],),),),],),);}


  Widget pygmymarmoset( ){
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent.withOpacity(0.5), width: 5),
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pygmymarmoset.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  buildRecipeTitle('Pygmy Marmoset'),

                  buildRecipeSubTitle('smallest monkey'),

                  ///////////////////////////////////THREE BUTTONS//////////////////////
                  Stack(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // buildTextTitleVariation2('Facts', false),

                          SizedBox(
                            height: 4,
                          ),

                          buildNutrition(0.25, "Weight", "pounds"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(5, "Height", "inch"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(15, "AVG age", "years"),
                          SizedBox(
                            height: 16,),],),],),],),),),],),);}


  Widget whiteheadedcapuchin( ){
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent.withOpacity(0.5), width: 5),
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/whiteheadedcapuchin.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  buildRecipeTitle('White headed capuchin'),

                  buildRecipeSubTitle('White-throated capuchins'),

                  ///////////////////////////////////THREE BUTTONS//////////////////////
                  Stack(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // buildTextTitleVariation2('Facts', false),

                          SizedBox(
                            height: 4,
                          ),

                          buildNutrition(8.6, "Weight", "pounds"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(15.4, "Height", "inch"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(30, "AVG age", "years"),
                          SizedBox(
                            height: 16,),],),],),],),),),],),);}

  Widget silverymarmoset( ){
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent.withOpacity(0.5), width: 5),
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/japanesemacaque.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  buildRecipeTitle('Silvery Marmoset'),

                  buildRecipeSubTitle('Mico Argentatus'),

                  ///////////////////////////////////THREE BUTTONS//////////////////////
                  Stack(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // buildTextTitleVariation2('Facts', false),

                          SizedBox(
                            height: 4,
                          ),

                          buildNutrition(0.8, "Weight", "pounds"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(8.5, "Height", "inch"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(16, "AVG age", "years"),
                          SizedBox(
                            height: 16,),],),],),],),),),],),);}


/////done
  Widget commonsquirrelmonkey( ){
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent.withOpacity(0.5), width: 5),
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/commonsquirrelmonkey.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  buildRecipeTitle('Squirrel Monkey'),

                  buildRecipeSubTitle('Omnivorous'),

                  ///////////////////////////////////THREE BUTTONS//////////////////////
                  Stack(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // buildTextTitleVariation2('Facts', false),

                          SizedBox(
                            height: 4,
                          ),

                          buildNutrition(1.5, "Weight", "pounds"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(14, "Height", "inch"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(15, "AVG age", "years"),
                          SizedBox(
                            height: 16,),],),],),],),),),],),);}




  Widget blackheadednightmonkey( ){
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent.withOpacity(0.5), width: 5),
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/blackheadednightmonkey.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  buildRecipeTitle('Black headed night monkey'),

                  buildRecipeSubTitle('amazing sense of smell'),

                  ///////////////////////////////////THREE BUTTONS//////////////////////
                  Stack(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // buildTextTitleVariation2('Facts', false),

                          SizedBox(
                            height: 4,
                          ),

                          buildNutrition(1.65, "Weight", "pounds"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(30, "Height", "inch"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(17, "AVG age", "years"),
                          SizedBox(
                            height: 16,),],),],),],),),),],),);}

  Widget nilgirilangur( ){
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent.withOpacity(0.5), width: 5),
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/nilgirilangur.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  buildRecipeTitle('Nilgiri Langur'),

                  buildRecipeSubTitle('hooded leaf monkey'),

                  ///////////////////////////////////THREE BUTTONS//////////////////////
                  Stack(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // buildTextTitleVariation2('Facts', false),

                          SizedBox(
                            height: 4,
                          ),

                          buildNutrition(25, "Weight", "pounds"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(24, "Height", "inch"),

                          SizedBox(
                            height: 16,
                          ),

                          buildNutrition(29, "AVG age", "years"),
                          SizedBox(
                            height: 16,),],),],),],),),),],),);}



  BoxShadow kBoxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.2),
    spreadRadius: 2,
    blurRadius: 8,
    offset: Offset(0, 0),
  );


  Widget buildNutrition(double value, String title, String subTitle){
    return Container(
      height: 50,
      width: 140,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent.withOpacity(0.2), width: 1),
        color: Colors.grey[50],
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [kBoxShadow],
            ),
            child: Center(
              child: Text(
                value.toStringAsFixed(1),


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
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 13,
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