import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Work"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(children: [
        //First Section
        Container(
          height: heightDevice - 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        )),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: SansBold("Hello I'm", 15.0),
                  ),
                  SizedBox(height: 15.0),
                  SansBold('Prachi Baitule', 56.0),
                  Sans('Flutter Developer', 30.0),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 20.0),
                      Sans("prachi.kutumbinfo@gmail.com", 15.0),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Icon(Icons.call),
                      SizedBox(width: 20.0),
                      Sans("88 8526 6592", 15.0),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Icon(Icons.location_pin),
                      SizedBox(width: 20.0),
                      Sans("Amravati", 15.0),
                    ],
                  ),
                  SizedBox(height: 15.0),
                ],
              ),
              CircleAvatar(
                radius: 147.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 143.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 140.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images.jpeg"),
                  ),
                ),
              ),
            ],
          ),
        ),
        //Second Section
        Container(
          height: heightDevice / 1.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/web.jpg", height: widthDevice / 1.9),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About Me", 40.0),
                  SizedBox(
                    height: 15.0,
                  ),
                  Sans(
                      "Hello! I'm Prachi Baitule I specialize in Flutter Development.",
                      15.0),
                  Sans(
                      "I strive to ensure astounding performance with state of",
                      15.0),
                  Sans(
                      "the Art security of Android, IOS, Web, Mac, Linux and Windows",
                      15.0),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.tealAccent,
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Flutter", 15.0),
                      ),
                      SizedBox(width: 7.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.tealAccent,
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Firebase", 15.0),
                      ),
                      SizedBox(width: 7.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.tealAccent,
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Android", 15.0),
                      ),
                      SizedBox(width: 7.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.tealAccent,
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("IOS", 15.0),
                      ),
                      SizedBox(width: 7.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.tealAccent,
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Windows", 15.0),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        //Third Section
        Container(
          height: heightDevice / 1.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SansBold("What I Do?", 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedCardWeb(
                      imagePath: "assets/webL.png", text: "Web Development"),
                  AnimatedCardWeb(
                      imagePath: "assets/app.png",
                      text: "App Development",
                      fit: BoxFit.contain,
                      reverse: true),
                  AnimatedCardWeb(
                    imagePath: "assets/firebase.png",
                    text: "Back-end Development",
                  ),
                ],
              )
            ],
          ),
        ),
        //Forth Section
        Container(
          height: heightDevice,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SansBold("Contact Me", 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextForm(
                        width: 350.0,
                        heading: "First name",
                        hintText: "Please enter your first name",
                      ),
                      SizedBox(height: 15.0),
                      TextForm(
                          heading: "Email",
                          width: 350.0,
                          hintText: "Please enter your email address"),
                    ],
                  ),
                  Column(
                    children: [
                      TextForm(
                        width: 350,
                        heading: "Last name",
                        hintText: "Please enter your last name",
                      ),
                      SizedBox(height: 15.0),
                      TextForm(
                          heading: "Phone number",
                          width: 350.0,
                          hintText: "Please enter your phone number"),
                    ],
                  ),
                ],
              ),
              TextForm(
                  heading: "Massage",
                  width: widthDevice / 1.5,
                  hintText: "Please type your massage",
                  maxLines: 10),
              MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
                  onPressed: () {})
            ],
          ),
        ),
        SizedBox(height: 20.0),
      ]),
    );
  }
}
