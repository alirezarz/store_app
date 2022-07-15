import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String textHint;
  const CustomInput({required this.textHint});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.0),
        color: Color(0xFFF2F2F2),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: this.textHint,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 22.0,
            vertical: 22.0,
          ),
        ),
        style: TextStyle(
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}
