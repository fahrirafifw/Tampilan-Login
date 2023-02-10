import 'package:flutter/material.dart';
import 'package:jobstreetcopy/Theapps/drawer_screen.dart';
import 'package:jobstreetcopy/Theapps/login_screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 57, 19, 94),
        title: Text(
          "Jobstreet KW20",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
      drawer: DrawerScreen(),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top: 15),
          color: Colors.white,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Let's Find the Job For You!",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your Dream Jobs",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                      hintText: "Search for your Dream Jobs or Position"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Jobs For You",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              jobs_item(context)
            ],
          ),
        ),
      ),
    );
  }

  Container jobs_item(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffE9FFEB),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/gojek.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Digital Marketing",
                  style: titleStyle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "FullTime",
                      style: positionText(),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      "Senior",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffE9FFEB),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/shopee.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Content Creator",
                  style: titleStyle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "FullTime",
                      style: positionText(),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Internship",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffE9FFEB),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/bukalapak.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Front End Dev",
                  style: titleStyle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "FullTime",
                      style: positionText(),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Senior",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffE9FFEB),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/blibli.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Ux Designer",
                  style: titleStyle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "FullTime",
                      style: positionText(),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Senior",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffE9FFEB),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/shopee.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Content Creator",
                  style: titleStyle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "FullTime",
                      style: positionText(),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Internship",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle positionText() {
    return TextStyle(color: Colors.grey, fontWeight: FontWeight.w400);
  }

  TextStyle subTitle() => TextStyle(fontWeight: FontWeight.w500);

  TextStyle titleStyle() {
    return TextStyle(fontSize: 15, fontWeight: FontWeight.w700);
  }
}
