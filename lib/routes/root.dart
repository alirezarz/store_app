import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:store/const.dart';
import 'package:store/routes/home.dart';
import 'package:store/routes/login.dart';

class Root extends StatelessWidget {

  final Future<FirebaseApp> firebasetest = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: firebasetest,
      builder: (context, snapshot){
        if(snapshot.hasError){
          return Scaffold(
            body: Center(
              child: Text('Firebase is not connect',
                style: Consts.textStyleOne,
              ),

            ),
          );
        }
        if(snapshot.connectionState == ConnectionState.done){
          return StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, streamsnapshot){
              if(streamsnapshot.hasError){
                return Scaffold(
                  body: Center(
                    child: Text('${streamsnapshot.error}'),
                  ),
                );
              }
              if(streamsnapshot.connectionState == ConnectionState.active){
                User? user = streamsnapshot.data as User?;
                if (user == null){
                  return LoginPage();
                }else{
                  return Home();
                }
              }
              return LoginPage();
            },
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
