import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final Function onTap;
  final bool mode;
  final bool loading;
  CustomButton({required this.text,required this.onTap,required this.mode, required this.loading});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onTap(),
        child: Container(
          height: 55.0,
          decoration: BoxDecoration(
              color: mode? Colors.transparent: Colors.black,
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(13.0)
          ),
          margin: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 25.0
          ),
          child: Stack(
            children: [
              Visibility(
                visible: !loading,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: mode? Colors.black: Colors.white,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: loading,
                child: const Center(
                  child: SizedBox(
                    height: 25.0,
                    width: 25.0,
                    child: CircularProgressIndicator(

                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
