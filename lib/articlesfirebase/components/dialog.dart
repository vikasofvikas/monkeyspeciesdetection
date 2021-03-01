import 'package:flutter/material.dart';

//This Dialoq shows up when Device is Not Connected to the Internet.
Future<void> noInternetDialog(context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          titlePadding: EdgeInsets.only(top: 35),
          contentPadding: EdgeInsets.fromLTRB(30, 30, 30, 35),
          title: Text(
            'Internet Status!',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w600,
              fontSize: 15,
              height: 1.3,
              color: Colors.green,
            ),
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Icon(Icons.wifi_off,size: 30,),
                  SizedBox(height: 30),
                  Text(
                    'You are Not Connected to the Internet.',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      height: 1.3,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 30),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    fillColor: Colors.green,
                    constraints: BoxConstraints(
                        minHeight: 50,
                        minWidth: MediaQuery.of(context).size.width),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    textStyle: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                    child: Text('OKAY'),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

//This Dialoq shows up when Device is Connected to the Internet,
//but it is currently Not Used in the App.
Future<void> activeInternetDialog(context, String connector) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          titlePadding: EdgeInsets.only(top: 35),
          contentPadding: EdgeInsets.fromLTRB(30, 30, 30, 35),
          title: Text(
            'Internet Connected',
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Icon(
                    IconData(
                        (connector == 'Wifi')
                            ? 0xe801
                            : (connector == 'Mobile') ? 0xe802 : 0xe803,
                        fontFamily: 'InternetStatus'),
                    size: 90,
                    color: Color(0xff00C735),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'You are Connected to the Internet via ' +
                        connector +
                        ' Network.',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      height: 1.3,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 30),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    fillColor: Colors.black,
                    constraints: BoxConstraints(
                        minHeight: 50,
                        minWidth: MediaQuery.of(context).size.width),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    textStyle: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.green,
                        fontWeight: FontWeight.w600),
                    child: Text('DONE'),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
