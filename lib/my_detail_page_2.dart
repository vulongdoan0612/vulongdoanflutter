// import 'dart:convert';

// import 'package:book_app/content_page.dart';
// import 'package:book_app/detail_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class MyDetailPage22 extends StatefulWidget {
//   const MyDetailPage2({super.key});

//   @override
//   State<MyDetailPage2> createState() => _MyDetailPage2State();
// }

// class _MyDetailPage2State extends State<MyDetailPage2> {
//   // List list = [];
//   // List info = [];
//   // _readData() async {
//   //   await DefaultAssetBundle.of(context)
//   //       .loadString("json/recent.json")
//   //       .then((s) {
//   //     setState(() {
//   //       list = json.decode(s);
//   //     });
//   //   });
//   //   await DefaultAssetBundle.of(context)
//   //       .loadString("json/detail.json")
//   //       .then((s) {
//   //     setState(() {
//   //       info = json.decode(s);
//   //     });
//   //   });
//   // }

//   // @override
//   @override
//   Widget build(BuildContext context) {
//     final DetailController fav = Get.put(DetailController());
//     return Scaffold(
//       body: Container(
//           padding: const EdgeInsets.only(top: 10),
//           color: Color.fromRGBO(207, 67, 33, 1),
//           child: Stack(
//             children: [
//               Positioned(
//                   top: 50,
//                   left: 10,
//                   child: IconButton(
//                     onPressed: () => Get.to(() => ContentPage()),
//                     icon: Icon(Icons.home_outlined),
//                   )),
//               Positioned(
//                 top: 120,
//                 left: 0,
//                 height: 100,
//                 width: MediaQuery.of(context).size.width,
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 100,
//                   margin: const EdgeInsets.only(left: 25, right: 25),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.black,
//                   ),
//                   child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: 100,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Colors.white),
//                       child: Container(
//                         padding: const EdgeInsets.only(left: 20, right: 20),
//                         child: Row(
//                           children: [
//                             CircleAvatar(
//                               radius: 40,
//                               backgroundImage:
//                                   AssetImage(Get.arguments['img1']),
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   Get.arguments['name1'],
//                                   style: TextStyle(
//                                       color: Color.fromARGB(255, 0, 0, 0),
//                                       fontSize: 24,
//                                       fontWeight: FontWeight.bold,
//                                       decoration: TextDecoration.none),
//                                 ),
//                               ],
//                             ),
//                             Expanded(child: Container()),
//                             Container(
//                               width: 60,
//                               height: 60,
//                               decoration: BoxDecoration(
//                                   color: Color.fromRGBO(0, 0, 0, 0.8),
//                                   borderRadius: BorderRadius.circular(40)),
//                               child: Icon(Icons.notifications,
//                                   color: Color.fromRGBO(207, 67, 33, 1),
//                                   size: 30),
//                             )
//                           ],
//                         ),
//                       )),
//                 ),
//               ),
//               Positioned(
//                 top: 320,
//                 left: 0,
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 child: Container(
//                   width: 80,
//                   height: 80,
//                   color: Colors.black,
//                 ),
//               ),
//               Positioned(
//                   top: 250,
//                   left: 0,
//                   width: MediaQuery.of(context).size.width,
//                   height: 250,
//                   child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.black,
//                         boxShadow: [
//                           BoxShadow(
//                               blurRadius: 30,
//                               spreadRadius: 1,
//                               offset: Offset(0, 50),
//                               color: Color.fromRGBO(29, 185, 84, 1)
//                                   .withOpacity(0.1))
//                         ]),
//                     child: Container(
//                       margin: const EdgeInsets.only(
//                           left: 20, top: 20, bottom: 20, right: 20),
//                       child: Column(
//                         children: [
//                           Container(
//                               child: Row(
//                             children: [
//                               Text(
//                                 Get.arguments['title1'],
//                                 style: TextStyle(
//                                     fontSize: 30,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.white),
//                               ),
//                               Expanded(child: Container())
//                             ],
//                           )),
//                           SizedBox(height: 20),
//                           Container(
//                             height: 60,
//                             width: MediaQuery.of(context).size.width,
//                             child: Text(
//                               Get.arguments['text'],
//                               style: TextStyle(
//                                   overflow: TextOverflow.fade,
//                                   fontSize: 20,
//                                   color: Color(0xFFb8b8b8)),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Divider(
//                             thickness: 1.0,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Icon(Icons.watch_later,
//                                       color: Color(0xFF69c5df)),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         Get.arguments['time1'],
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w700),
//                                       ),
//                                       Text(
//                                         "Deadline",
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             color: Color(0xFFacacac)),
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Icon(Icons.monetization_on,
//                                       color: Color(0xFFfb8483)),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         Get.arguments['prize1'],
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w700),
//                                       ),
//                                       Text(
//                                         "Prize",
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             color: Color(0xFFacacac)),
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Icon(Icons.star, color: Color(0xFFfbc33e)),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         "Top Level",
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w700),
//                                       ),
//                                       Text(
//                                         "Entry",
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             color: Color(0xFFacacac)),
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   )),
//               Positioned(
//                   top: 540,
//                   left: 25,
//                   height: 50,
//                   child: Container(
//                     child: RichText(
//                         text: TextSpan(
//                             text: "Total Participants ",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 20,
//                                 color: Colors.white),
//                             children: [
//                           TextSpan(
//                               text: "(11)",
//                               style: TextStyle(color: Color(0xFFacacac)))
//                         ])),
//                   )),
//               Stack(
//                 children: [
//                   for (int i = 0; i < 5; i++)
//                     Positioned(
//                       top: 590,
//                       left: (20 + i * 35).toDouble(),
//                       width: 50,
//                       height: 50,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(25),
//                             image: DecorationImage(
//                                 image: AssetImage("img/sing1.jpg"),
//                                 fit: BoxFit.cover)),
//                       ),
//                     )
//                 ],
//               ),
//               Positioned(
//                   top: 670,
//                   left: 25,
//                   child: Container(
//                     child: Row(children: [
//                       Container(
//                         width: 60,
//                         height: 60,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Color.fromRGBO(29, 185, 84, 1)),
//                         child: IconButton(
//                             onPressed: () => fav.favCounter(),
//                             icon: Icon(Icons.favorite_border),
//                             color: Colors.white),
//                       ),
//                       SizedBox(width: 10),
//                       Container(
//                         child: Text(
//                           "Add to favorite",
//                           style: TextStyle(color: Colors.white, fontSize: 18),
//                         ),
//                       )
//                     ]),
//                   ))
//             ],
//           )),
//     );
//   }
// }
import 'dart:convert';

import 'package:book_app/content_page.dart';
import 'package:book_app/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyDetailPage2 extends StatefulWidget {
  const MyDetailPage2({super.key});

  @override
  State<MyDetailPage2> createState() => _MyDetailPage2State();
}

class _MyDetailPage2State extends State<MyDetailPage2> {
  // List list = [];
  // List info = [];
  // _readData() async {
  //   await DefaultAssetBundle.of(context)
  //       .loadString("json/recent.json")
  //       .then((s) {
  //     setState(() {
  //       list = json.decode(s);
  //     });
  //   });
  //   await DefaultAssetBundle.of(context)
  //       .loadString("json/detail.json")
  //       .then((s) {
  //     setState(() {
  //       info = json.decode(s);
  //     });
  //   });
  // }

  // @override
  @override
  Widget build(BuildContext context) {
    final DetailController fav = Get.put(DetailController());
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 10),
          color: Color.fromRGBO(207, 67, 33, 1),
          child: Stack(
            children: [
              Positioned(
                  top: 50,
                  left: 10,
                  child: IconButton(
                    onPressed: () => Get.to(() => ContentPage()),
                    icon: Icon(Icons.home_outlined),
                  )),
              Positioned(
                top: 120,
                left: 0,
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  margin: const EdgeInsets.only(left: 25, right: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(Get.arguments['img']),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Get.arguments['name'],
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 0, 0, 0.8),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Icon(Icons.notifications,
                                  color: Color.fromRGBO(207, 67, 33, 1),
                                  size: 30),
                            )
                          ],
                        ),
                      )),
                ),
              ),
              Positioned(
                top: 320,
                left: 0,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.black,
                ),
              ),
              Positioned(
                  top: 250,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 30,
                              spreadRadius: 1,
                              offset: Offset(0, 50),
                              color: Color.fromRGBO(29, 185, 84, 1)
                                  .withOpacity(0.1))
                        ]),
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 20, top: 20, bottom: 20, right: 20),
                      child: Column(
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Text(
                                Get.arguments['title'],
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Expanded(child: Container())
                            ],
                          )),
                          SizedBox(height: 20),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              Get.arguments['text'],
                              style: TextStyle(
                                  overflow: TextOverflow.fade,
                                  fontSize: 20,
                                  color: Color(0xFFb8b8b8)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.watch_later,
                                      color: Color(0xFF69c5df)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        Get.arguments['time'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "Deadline",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFacacac)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.monetization_on,
                                      color: Color(0xFFfb8483)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        Get.arguments['prize'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "Prize",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFacacac)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star, color: Color(0xFFfbc33e)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Top Level",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "Entry",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFacacac)),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
              Positioned(
                  top: 540,
                  left: 25,
                  height: 50,
                  child: Container(
                    child: RichText(
                        text: TextSpan(
                            text: "Total Participants ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.white),
                            children: [
                          TextSpan(
                              text: "(11)",
                              style: TextStyle(color: Color(0xFFacacac)))
                        ])),
                  )),
              Stack(
                children: [
                  for (int i = 0; i < 5; i++)
                    Positioned(
                      top: 590,
                      left: (20 + i * 35).toDouble(),
                      width: 50,
                      height: 50,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage("img/sing1.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    )
                ],
              ),
              Positioned(
                  top: 670,
                  left: 25,
                  child: Container(
                    child: Row(children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(29, 185, 84, 1)),
                        child: IconButton(
                            onPressed: () => fav.favCounter(),
                            icon: Icon(Icons.favorite_border),
                            color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: Text(
                          "Add to favorite",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      )
                    ]),
                  ))
            ],
          )),
    );
  }
}
