import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../const.dart';
import '../widgets/custombutton.dart';
import '../widgets/custominput.dart';

class SignUp extends StatefulWidget {

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isLoading =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30.0),
              child: const Text('Create a New Account!',
                style: Consts.headingTextStype,
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              children: [
                const CustomInput(
                  textHint: 'Email ...',
                ),
                const CustomInput(
                  textHint: 'Password ...',
                ),
                CustomButton(
                    text:'Create new account',
                    onTap: () {
                      setState((){
                        isLoading = true;
                      });
                      Get.defaultDialog(
                        title: 'Invalid Data input',
                        content: Text('Please enter email and password'),
                        actions: [
                          ElevatedButton(
                              onPressed: () => Get.back(),
                              child: const Text('OK!')
                          )
                        ],
                        contentPadding: const EdgeInsets.all(15.0),
                      );

                    },
                    mode: false,
                    loading: false,
                ),
              ],
            ),
            CustomButton(
                text: 'Back To Login',
                onTap: () => Get.back(),
                mode: true,
                loading: isLoading,
            ),
          ],
        ),
      ),
    );
  }
}
