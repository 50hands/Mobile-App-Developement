import 'package:coronaApp/pages/coronatab.dart';
import 'package:coronaApp/pages/home.dart';
import 'package:coronaApp/pages/hometab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:coronaApp/widgets/map.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(MaterialApp(
    
    supportedLocales: [
  Locale('en','US'),
  Locale('fr','FR'),
],
    
  localizationsDelegates: [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
    ],
    
    localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode && supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
        }
          return supportedLocales.first;
      },
    
      initialRoute:'/' ,
    routes: {
      '/':(context)=>Splash(),
      '/home':(context)=>Home(),
      '/had':(context)=>Hometab(),
      '/her':(context)=>Coronatab(),
      '/map':(context)=>Map(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final spinkit = SpinKitFadingCircle(
    color: Colors.deepOrange,
    //size: 50.0,
  );
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6),
        (){
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (BuildContext context) => Home()));
        },);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        //backgroundColor: Colors.white,
        backgroundColor: Colors.blueGrey[50],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height/3),
            Center(
              child: Image(image:AssetImage('assets/images/final_logo.png'),
                width: MediaQuery.of(context).size.width/1.3,),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/4),
            SpinKitSquareCircle(
            color: Colors.blue,
            ),

          ],
        )
    );
  }
}
