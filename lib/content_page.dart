import 'dart:convert';
import 'package:book_app/login_page.dart';
import 'package:book_app/recent_contest.dart';
import 'package:book_app/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  //loading json props below
  List list = [];
  List info = [];
  _readData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/recent.json")
        .then((s) {
      setState(() {
        list = json.decode(s);
      });
    });
    await DefaultAssetBundle.of(context)
        .loadString("json/detail.json")
        .then((s) {
      setState(() {
        info = json.decode(s);
      });
    });
  }

  //loading json props
  @override
  void initState() {
    _readData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              padding: const EdgeInsets.only(left: 20),
              onPressed: () => Get.to(() => Login()),
              icon: Icon(Icons.logout))),
      body: Container(
          padding: const EdgeInsets.only(top: 10),
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                margin: const EdgeInsets.only(left: 25, right: 25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                child: Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('img/sing7.jpg'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'James',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 75,
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                              borderRadius: BorderRadius.circular(40)),
                          child: Icon(Icons.notifications,
                              color: Color.fromRGBO(207, 67, 33, 1), size: 30),
                        )
                      ],
                    )),
              ),
              SizedBox(height: 30),
              Container(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    children: [
                      Text(
                        "Popular Event",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.none),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Show all",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(179, 179, 179, 1),
                            fontSize: 15,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(29, 185, 84, 1)),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => RecentContest());
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          )),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 200,
                  child: PageView.builder(
                      controller: PageController(viewportFraction: 0.88),
                      itemCount: info.length,
                      itemBuilder: (_, i) {
                        return GestureDetector(
                            onTap: () {
                              Get.toNamed('/detail/', arguments: {
                                'title': info[i]['title'].toString(),
                                'name': info[i]['name'].toString(),
                                'text': info[i]['text'].toString(),
                                'img': info[i]['img'].toString(),
                                'time': info[i]['time'].toString(),
                                'prize': info[i]['prize'].toString(),
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.only(left: 0, top: 20),
                              height: 220,
                              width: MediaQuery.of(context).size.width - 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(info[i]['banner']),
                                      fit: BoxFit.fitHeight,
                                      colorFilter: ColorFilter.mode(
                                        Colors.white.withOpacity(1),
                                        BlendMode.modulate,
                                      ))),
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    // color: Color.fromRGBO(103, 128, 38, 0.9),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          info[i]['title'],
                                          style: TextStyle(
                                              shadows: <Shadow>[
                                                Shadow(
                                                  offset: Offset(5.0, 0.0),
                                                  blurRadius: 10.0,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                ),
                                                Shadow(
                                                  offset: Offset(10.0, 10.0),
                                                  blurRadius: 15.0,
                                                  color: Color.fromARGB(
                                                      124, 0, 0, 0),
                                                ),
                                              ],
                                              fontSize: 38,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Row(
                                    children: [
                                      for (int i = 0; i < 4; i++)
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          width: 50,
                                          height: 50,
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          info[i]['img']),
                                                      fit: BoxFit.cover))),
                                        )
                                    ],
                                  ),
                                ],
                              ),
                            ));
                      })),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(children: [
                  Text('Recent Events',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                          decoration: TextDecoration.none)),
                  Expanded(child: Container()),
                  Text(
                    'Show All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(179, 179, 179, 1),
                        fontSize: 15,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(width: 5),
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(29, 185, 84, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => SecondPage());
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      )),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: list.length,
                      itemBuilder: (_, i) {
                        return GestureDetector(
                            onTap: () {
                              Get.toNamed('/de/', arguments: {
                                'title1': info[i]['title1'].toString(),
                                'name1': info[i]['name1'].toString(),
                                'text1': info[i]['text1'].toString(),
                                'img1': info[i]['img1'].toString(),
                                'time1': info[i]['time1'].toString(),
                                'prize1': info[i]['prize1'].toString(),
                              });
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                margin: const EdgeInsets.only(
                                    left: 25, right: 25, bottom: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage(list[i]['img']),
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          list[i]['status'],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              decoration: TextDecoration.none),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          width: 120,
                                          child: Text(
                                            list[i]['text'],
                                            style: TextStyle(
                                                color: Color(0xFF3b3f42),
                                                fontSize: 16,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: Container()),
                                    Container(
                                      width: 70,
                                      height: 70,
                                      child: Text(
                                        list[i]['time'],
                                        style: TextStyle(
                                            fontSize: 10,
                                            decoration: TextDecoration.none,
                                            color: Color(0xFFb2b8bb)),
                                      ),
                                    ),
                                  ]),
                                )));
                      }),
                ),
              )
            ],
          )),
    );
  }
}
