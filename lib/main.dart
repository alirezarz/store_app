import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/routes/root.dart';
import '';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme
        ),

      ),
      home: Root(),
    );
  }
}

