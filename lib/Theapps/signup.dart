import 'package:flutter/material.dart';
import 'package:jobstreetcopy/Theapps/profile.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 57, 19, 94),
        title: Text(
          "Sign Up",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/download.jfif",
                scale: 0.5,
                width: 600,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Join Us!",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 60, 33, 134)),
              ),
              const SizedBox(
                height: 20,
              ),
              //Container untuk form data pengguna
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 60, 33, 134)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "First Name"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 60, 33, 134)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Last Name"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 60, 33, 134)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration:
                      InputDecoration.collapsed(hintText: "Email Address"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 60, 33, 134)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Password"),
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              //Container untuk button
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 60, 33, 134),
                    border: Border.all(color: Color.fromARGB(255, 60, 33, 134)),
                    borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => profile(),
                        ));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 24,
                        letterSpacing: 3,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              const SizedBox(
                height: 190,
              )
            ],
          ),
        ),
      ),
    );
  }
}
