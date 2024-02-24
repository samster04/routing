
import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:routing/registration.dart';
import 'package:routing/login.dart';
import 'package:routing/list_page.dart';
import 'package:routing/splash.dart';
import 'package:routing/list_view_page.dart';
import 'package:routing/top_picks.dart';
import 'package:routing/utilities/default_firebase_config.dart';
import 'package:routing/dashboard.dart';

void main() {
  initializeFirebase();
  runApp( MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
      useMaterial3: false,
    ),
    routes:{
      '/':(context)=> MyApp(), //'/' is root route and sasbe first ma tehi route suru hunxa
      //'/home':(context)=> MyApp(),
      '/register' :(context)=> RegistrationForm(),
      '/login':(context)=> Login(),
      '/list page':(context)=> ListPage(),
      '/listview page':(context)=>ListViewPage(),
      '/top picks':(context)=>TopPicksModel(),
      '/dashboard':(context)=>Dashboard(),
    },
    //initialRoute: '/top picks',    //'/'esbhitra j lekhyo tyo first ma aauxa

  )
  );
}
void initializeFirebase() async
{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.web );
  /*FirebaseAuth.instance.signInWithPhoneNumber('+9779803116282')
      .then((value) => print('login success $value'),
  )
      .catchError(
        (error)=> print('auth error $error'),
  );*/
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Samriddhi CSIT 3rd'),
        centerTitle: true,
        actions: [
          Icon(Icons.logout),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.person),
        ],
      ),
      body: Column(     //yaha body:center garera tesbhitra child ma row halera tesbhitra mainaxisalignment halera ani children halera ni garna milxa
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/register');
              },
              child: Text('Register'),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/login');
              },
              child: Text('Login'),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/listpage');
              },
              child: Text('List page'),
            ),
          ),
          /*Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed('listviewpage');
              },
              child: Text('List view page'),
            ),
          ),*/

        ],
      ),
    );
  }
}