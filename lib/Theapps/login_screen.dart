import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobstreetcopy/Theapps/home_screen.dart';
import 'package:jobstreetcopy/Theapps/signup.dart';
import 'package:jobstreetcopy/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(100),
                  child: Image.asset(
                    'assets/img/logo2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "JobStreet Copy 2",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff4758D8)),
              ),
              const SizedBox(
                height: 23,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff475BD8)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration.collapsed(hintText: "Email"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff475BD8)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Password"),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff475BD8),
                    border: Border.all(color: Color(0xff475BD8)),
                    borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homescreen(),
                        ));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(0, 235, 235, 238),
                    border: Border.all(color: Color.fromARGB(0, 71, 90, 216)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: const Text(
                    "Don't have an Account yet?, sign up here!",
                    style: TextStyle(
                        color: Color.fromARGB(255, 131, 39, 218),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
