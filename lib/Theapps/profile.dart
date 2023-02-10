import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jobstreetcopy/Theapps/home_screen.dart';
import 'package:jobstreetcopy/Theapps/login_screen.dart';
import 'package:jobstreetcopy/Theapps/signup.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(4, 9, 35, 1),
                Color.fromARGB(255, 59, 17, 71),
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 70),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homescreen()));
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        icon: const Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'My\nProfile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontSize: 42, letterSpacing: 2),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    height: height * 0.4,
                    child: LayoutBuilder(builder: (context, constraints) {
                      double innerHeight = constraints.maxHeight;
                      double innerWidth = constraints.maxWidth;
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: innerHeight * 0.8,
                              width: innerWidth,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  const Text(
                                    'Fahri Rafif Waskito',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 31, 7, 38),
                                        fontSize: 37,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'About Me',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 31, 7, 38),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(
                                        15), //apply padding to all four sides
                                    child: Text(
                                      "I am an enthusiastic, self-motivated, reliable, responsible and hard working person. I am a mature team worker and adaptable to all challenging situations. I am able to work well both in a team environment as well as using own initiative. I am able to work well under pressure and adhere to strict deadlines.",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 31, 7, 38)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 270,
          left: 125,
          right: 125,
          child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: const Color.fromARGB(255, 74, 11, 110),
                child: Padding(
                  padding: const EdgeInsets.all(8), // Border radius
                  child: ClipOval(child: Image.asset('assets/img/Fahri.jpeg')),
                ),
              )),
        ),
      ],
    );
  }
}
