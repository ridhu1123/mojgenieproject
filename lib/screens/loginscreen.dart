import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mojgenieproject/api/loginApi/apiclass.dart';
import 'package:mojgenieproject/screens/homescreen.dart';
import 'package:motion_toast/motion_toast.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://cdn.pixabay.com/photo/2017/07/18/15/39/dental-care-2516133_640.png",
                height: 140,
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                "Enter your Email",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _emailController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _passwordController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          loginuser();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor: Colors.black),
                        child: Text(
                          "PROCEED",
                          style: TextStyle(color: Colors.white),
                        ))),
              )
            ],
          ),
        ),
      )),
    );
  }

  void loginuser() async {
    final _email = _emailController.text;
    final _password = _passwordController.text;

    if (_email.isEmpty) {
      showErrorMessage('Please enter email id');
    } else if (_password.isEmpty) {
      showErrorMessage('Please enter your password');
    } else {
      final _formData =
          FormData.fromMap({'email': _email, 'password': _password});

      final result = await LoginApiClass().loginUerapi(_formData, context);

      if (result != null) {
        showSuccessMessage("succesfully logined");
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
          return HomeScreen();
        }));
      }
    }
  }

  void showErrorMessage(String message) {
    MotionToast.error(
      title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context as BuildContext);
  }

  void showSuccessMessage(String message) {
    MotionToast.success(
      title: const Text(
        'Success',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context as BuildContext);
  }
}
