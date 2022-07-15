import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:store/const.dart';
import 'package:store/routes/signup.dart';
import 'package:store/widgets/custombutton.dart';
import 'package:store/widgets/custominput.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _HomeState();
}

class _HomeState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 30.0),
                child: const Text('Welcome to the store!',
                style: Consts.headingTextStype,
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                children: [
                  CustomInput(
                    textHint: 'Enter Email ...',
                  ),
                  CustomInput(
                    textHint: 'Enter Password ...',
                  ),
                  CustomButton(
                      text:'Login',
                      onTap: () =>print('button Clicked'),
                      mode: false,
                      loading: false,
                  )
                ],
              ),
              CustomButton(
                  text: 'Create New Account',
                  onTap: () => Get.to(()=> SignUp()),
                  mode: true,
                loading: false,
              )
            ],
          ),
        ),
      )
    );
  }
}
