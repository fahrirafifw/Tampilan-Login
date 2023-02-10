import 'dart:convert';
// import 'dart:html';
// import 'package:flutr/data_class/data_bpkb.dart';

// import 'package:flutr/view/beranda.dart';
import 'package:flutter/material.dart';
import 'package:jobstreetcopy/Theapps/home_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:jobstreetcopy/Theapps/rounded_input_field.dart';
import 'package:jobstreetcopy/Theapps/rounded-button.dart';
import 'package:jobstreetcopy/Theapps/rounded_password_field.dart';
import 'package:http/http.dart' as http;

class LoginScreen1 extends StatefulWidget {
  LoginScreen1({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

enum LoginStatus {
  notSignIn,
  Sigin,
}

class _LoginScreenState extends State<LoginScreen1> {
  static LoginStatus _loginStatus = LoginStatus.notSignIn;
  bool _flag = true;
  bool hasInternet = false;
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  // ignore: non_constant_identifier_names
  String? nUsername, ofcname, nPassword, usr_name, status, msg;
  // List<dtOfc> dtof = [];

  final _formKey = GlobalKey<FormState>();
  login(String nUsername, String nPassword, BuildContext context) async {
    try {
      // CALL API LOGIN LDAP
      final response = await http.post(
        Uri.parse(
            'http://app.brifinance.co.id/tracking/index.php/api/mybrif/login'),
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        encoding: Encoding.getByName('utf-8'),
        body: {
          "username": nUsername,
          "password": nPassword,
        },
      );
      final data = jsonDecode(response.body);
      usr_name = data['username'];
      print(data['username']);
      if (usr_name != null) {
        var res = await http.post(
            Uri.parse(
                "http://app.brifinance.co.id/tracking/index.php/api/referral/ofcdt"),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({
              "username": usr_name,
            }));

        var data2 = jsonDecode(res.body);
        // print(data2);
        // usr_name = data2['USERNAME'];
        // ofcname = data2['OFFICE_NAME'];

        // print(usr_name);
        // print(ofcname);
        // print(data2);
        print(data2[0]['USERNAME']);
        print(data2[0]['OFFICE_NAME']);
        // print(data2[1]['USERNAME']);
        // print(data2[2]['USERNAME']);
        print(data2.length);

        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                  title: Text('Login As',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "SF",
                        fontSize: 16,
                      )),
                  content: Container(
                    height: 300.0, // Change as per your requirement
                    width: 300.0, // Change as per your requirement
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: data2.length,
                      itemBuilder: (BuildContext context, int index) {
                        return data2 == null
                            ? Text("Not Found")
                            :

                            // Text(data2[index]['OFFICE_NAME']);

                            itemList(data2[index]['USERNAME'],
                                data2[index]['OFFICE_NAME'], () {
                                usr_name = data2[index]['USERNAME'];
                                ofcname = data2[index]['OFFICE_NAME'];
                                status = "data_found";
                                msg =
                                    "Login sebagai ' . ${data2[0]['OFFICE_NAME'][index]}";

                                if (ofcname == ofcname &&
                                    usr_name == usr_name) {
                                  setState(() {
                                    _loginStatus = LoginStatus.Sigin;
                                  });
                                }
                                Navigator.pop(context);
                              });
                      },
                    ),
                  ));
            });
      } else {
        Alert(
          context: context,
          type: AlertType.warning,
          title: "Username Atau Password Salah",
          desc: msg,
          buttons: [
            DialogButton(
              child: const Text(
                "OK",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ).show();
      }
    } catch (error) {
      _showToast(context, error.toString());
    }
  }

  Widget itemList(String usr_name, String ofcname, VoidCallback pressed) {
    return Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: pressed,
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    color: Color(0xff004993),
                    size: 20,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        usr_name,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "SF",
                            fontSize: 12,
                            color: Color(0xff575757)),
                      ),
                      Text(
                        ofcname,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontFamily: "SF",
                            fontSize: 12,
                            color: Color(0xff575757)),
                      ),
                    ],
                  ),
                ),
              ])),
        ));
  }

  Widget noConnection() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Image.asset("assets/images/lost_connection.jpg"),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    switch (_loginStatus) {
      case LoginStatus.notSignIn:
        return Scaffold(
          body: Container(
              width: double.infinity,
              height: size.height,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(height: size.height * 0.03),
                          Image.asset(
                            "assets/images/brif.jpg",
                            height: size.height * 0.15,
                          ),
                          SizedBox(height: size.height * 0.03),
                          RoundedInputField(
                            hintText: "Username",
                            onChanged: (value) {},
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Username is Required!";
                              } else if (_flag == false) {
                                _flag = true;
                              } else {
                                return null;
                              }
                            },
                            controller: myUsernameController,
                          ),
                          RoundedPasswordField(
                            onChanged: (value) {},
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password is Required!";
                              } else if (_flag == false) {
                                _flag = true;
                              } else {
                                return null;
                              }
                            },
                            controller: myPasswordController,
                          ),
                          RoundedButton(
                            text: "LOGIN",
                            color: Color(0xff004993),
                            textColor: Colors.white,
                            c_width: MediaQuery.of(context).size.width * 0.8,
                            press: () async {
                              nUsername = myUsernameController.text;
                              nPassword = myPasswordController.text;

                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                print("nUsername: " + nUsername.toString());

                                hasInternet = await InternetConnectionChecker()
                                    .hasConnection;
                                setState(() {
                                  hasInternet;
                                });
                                print(hasInternet);

                                hasInternet
                                    ? login(nUsername!, nPassword!, context)
                                    : noConnection();
                              }
                            },
                          ),
                          SizedBox(height: size.height * 0.05),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        );
      case LoginStatus.Sigin:
        return LoginScreen1(
            // usr_name: usr_name,
            // ofcname: ofcname,
            );
    }
  }

  void _showToast(BuildContext context, String msg) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }
}
