import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirebaseTest(),
    );
  }
}

class FirebaseTest extends StatelessWidget {

  final Future<FirebaseApp> firebasetest = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: firebasetest,
      builder: (context, snapshot){
        if(snapshot.hasError){
          return Scaffold(
            body: Center(
              child: Text('Firebase is not connect'),
            ),
          );
        }
        if(snapshot.connectionState == ConnectionState.done){
          return Scaffold(
            body: Center(
              child: Text('Firebase is connect'),
            ),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
