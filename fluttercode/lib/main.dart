import 'package:flutter/material.dart';
import 'package:flutter_wall_layout/flutter_wall_layout.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(MyMain());
}

class MyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Meet Chavan",
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: MyWidget(key: key));
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
              width: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/bgi.jpeg",
              )),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Colors.transparent,
                  Color.fromRGBO(28, 28, 28, 1),
                ],
                stops: [
                  0.1,
                  0.6,
                ],
              ),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/meetchavan.jpeg"),
                  radius: 60,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Meet Chavan",
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "Coder | Gamer | Techie | Student",
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Divider(
                  height: 30,
                  color: Colors.white,
                ),
                Expanded(
                  child: WallLayout(
                    stonePadding: 12,
                    scrollDirection: MediaQuery.of(context).size.width > 600
                        ? Axis.vertical
                        : Axis.vertical,
                    layersCount:
                        MediaQuery.of(context).size.width > 600 ? 7 : 3,
                    stones: [
                      Stone(
                          id: 1,
                          child: MediaQuery.of(context).size.width > 600
                              ? InkWell(
                                  onTap: () => launchUrlString(
                                      "https://www.linkedin.com/in/meet-chavan/"),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade50,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Flexible(
                                          fit: FlexFit.loose,
                                          child: Image.asset(
                                            "assets/images/linkedin.png",
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        Center(
                                            child: Text(
                                          "Linkedin",
                                          style:
                                              GoogleFonts.nunito(fontSize: 18),
                                        )),
                                      ],
                                    ),
                                  ),
                                )
                              : InkWell(
                                  onTap: () => launchUrlString(
                                      "https://www.linkedin.com/in/meet-chavan/"),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Flexible(
                                          child: Image.asset(
                                            "assets/images/linkedin.png",
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        Center(
                                            child: Text(
                                          "Linkedin",
                                          style:
                                              GoogleFonts.nunito(fontSize: 18),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                          width:
                              MediaQuery.of(context).size.width > 600 ? 1 : 2,
                          height: 1),
                      Stone(
                          id: 2,
                          child: InkWell(
                            onTap: () => launchUrlString(
                                "https://github.com/meet242005"),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    fit: FlexFit.loose,
                                    child: Image.asset(
                                      "assets/images/github.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  Center(
                                      child: Text(
                                    "GitHub",
                                    style: GoogleFonts.nunito(fontSize: 18),
                                  )),
                                ],
                              ),
                            ),
                          ),
                          width: 1,
                          height: 1),
                      Stone(
                          id: 3,
                          child: InkWell(
                            onTap: () => launchUrlString(
                                "https://www.threads.net/@_meetchavan_"),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    fit: FlexFit.loose,
                                    child: Image.asset(
                                      "assets/images/threads.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  Center(
                                      child: Text(
                                    "Threads",
                                    style: GoogleFonts.nunito(fontSize: 18),
                                  )),
                                ],
                              ),
                            ),
                          ),
                          width: 1,
                          height: 1),
                      Stone(
                          id: 4,
                          child: MediaQuery.of(context).size.width > 600
                              ? InkWell(
                                  onTap: () => launchUrlString(
                                      "https://www.instagram.com/_meetchavan_/"),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade50,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Flexible(
                                          fit: FlexFit.loose,
                                          child: Image.asset(
                                            "assets/images/instagram.png",
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        Center(
                                            child: Text(
                                          "Instagram",
                                          style:
                                              GoogleFonts.nunito(fontSize: 18),
                                        )),
                                      ],
                                    ),
                                  ),
                                )
                              : InkWell(
                                  onTap: () => launchUrlString(
                                      "https://www.instagram.com/_meetchavan_/"),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Flexible(
                                          child: Image.asset(
                                            "assets/images/instagram.png",
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        Center(
                                            child: Text(
                                          "Instagram",
                                          style:
                                              GoogleFonts.nunito(fontSize: 18),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                          width:
                              MediaQuery.of(context).size.width > 600 ? 1 : 2,
                          height: 1),
                      Stone(
                          id: 5,
                          child: InkWell(
                            onTap: () => launchUrlString(
                                "https://www.snapchat.com/add/meetchavan24"),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    fit: FlexFit.loose,
                                    child: Image.asset(
                                      "assets/images/snapchat.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  Center(
                                      child: Text(
                                    "Snapchat",
                                    style: GoogleFonts.nunito(fontSize: 18),
                                  )),
                                ],
                              ),
                            ),
                          ),
                          width: 1,
                          height: 1),
                      Stone(
                          id: 6,
                          child: InkWell(
                            onTap: () => launchUrlString(
                                "https://twitter.com/MeetChavan24"),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    fit: FlexFit.loose,
                                    child: Image.asset(
                                      "assets/images/twitter.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  Center(
                                      child: Text(
                                    "Twitter",
                                    style: GoogleFonts.nunito(fontSize: 18),
                                  )),
                                ],
                              ),
                            ),
                          ),
                          width: 1,
                          height: 1),
                      Stone(
                          id: 7,
                          child: InkWell(
                            onTap: () => launchUrlString(
                                "https://www.facebook.com/meet.chavan.10/"),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    fit: FlexFit.loose,
                                    child: Image.asset(
                                      "assets/images/facebook.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  Center(
                                      child: Text(
                                    "Facebook",
                                    style: GoogleFonts.nunito(fontSize: 18),
                                  )),
                                ],
                              ),
                            ),
                          ),
                          width: 1,
                          height: 1)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
