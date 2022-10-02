// import 'dart:convert';
// import 'package:get/get.dart';
// import 'package:flutter/cupertino.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class SecondPage extends StatefulWidget {
//   const SecondPage({super.key});

//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   List list = [];
//   _readData() async {
//     await DefaultAssetBundle.of(context)
//         .loadString("json/second.json")
//         .then((s) {
//       setState(() {
//         list = json.decode(s);
//       });
//     });
//   }

//   //loading json props
//   @override
//   void initState() {
//     _readData();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//             backgroundColor: Colors.black,
//             leading: IconButton(
//                 padding: const EdgeInsets.only(left: 20),
//                 onPressed: () => Get.back(),
//                 icon: Icon(Icons.arrow_back_ios))),
//         body: Container(
//           margin: const EdgeInsets.only(left: 20, top: 10, right: 10),
//           child: Column(children: [
//             Expanded(
//                 child: SingleChildScrollView(
//               child: Column(children: [
//                 for (int i = 0; i < list.length; i++)
//                   Container(
//                       height: 240,
//                       margin: const EdgeInsets.only(bottom: 30),
//                       child: GestureDetector(
//                           onTap: () {
//                             Get.toNamed('/detail/', arguments: {
//                               'title': list[i]['title'].toString(),
//                               'name': list[i]['name'].toString(),
//                               'text': list[i]['text'].toString(),
//                               'img': list[i]['img'].toString(),
//                               'time': list[i]['time'].toString(),
//                               'prize': list[i]['prize'].toString(),
//                             });
//                           },
//                           child: Container(
//                             margin: const EdgeInsets.only(right: 10),
//                             padding: const EdgeInsets.only(left: 0, top: 20),
//                             height: 220,
//                             width: MediaQuery.of(context).size.width - 20,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 image: DecorationImage(
//                                     image: AssetImage(list[i]['banner']),
//                                     fit: BoxFit.fitHeight,
//                                     colorFilter: ColorFilter.mode(
//                                       Colors.white.withOpacity(1),
//                                       BlendMode.modulate,
//                                     ))),
//                             child: Column(
//                               children: [
//                                 Container(
//                                   width: MediaQuery.of(context).size.width,
//                                   // color: Color.fromRGBO(103, 128, 38, 0.9),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         list[i]['title'],
//                                         style: TextStyle(
//                                             shadows: <Shadow>[
//                                               Shadow(
//                                                 offset: Offset(5.0, 0.0),
//                                                 blurRadius: 10.0,
//                                                 color: Color.fromARGB(
//                                                     255, 0, 0, 0),
//                                               ),
//                                               Shadow(
//                                                 offset: Offset(10.0, 10.0),
//                                                 blurRadius: 15.0,
//                                                 color: Color.fromARGB(
//                                                     124, 0, 0, 0),
//                                               ),
//                                             ],
//                                             fontSize: 38,
//                                             fontWeight: FontWeight.w500,
//                                             color: Colors.white),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 120,
//                                 ),
//                                 Row(
//                                   children: [
//                                     for (int i = 0; i < 4; i++)
//                                       Container(
//                                         margin: const EdgeInsets.only(left: 10),
//                                         width: 50,
//                                         height: 50,
//                                         child: Container(
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(25),
//                                                 image: DecorationImage(
//                                                     image: AssetImage(
//                                                         list[i]['img']),
//                                                     fit: BoxFit.cover))),
//                                       )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           )))
//               ]),
//             ))
//           ]),
//         ));
//   }
// }
import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List info = [];
  _readData() async {
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
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                padding: const EdgeInsets.only(left: 20),
                onPressed: () => Get.back(),
                icon: Icon(Icons.arrow_back_ios))),
        body: Container(
          margin: const EdgeInsets.only(left: 20, top: 10, right: 10),
          child: Column(children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: [
                for (int i = 0; i < info.length; i++)
                  Container(
                      height: 280,
                      margin: const EdgeInsets.only(bottom: 30),
                      child: GestureDetector(
                          onTap: () {
                            Get.toNamed('/de/', arguments: {
                              'title': info[i]['title'].toString(),
                              'name': info[i]['name'].toString(),
                              'text': info[i]['text'].toString(),
                              'img': info[i]['img'].toString(),
                              'time': info[i]['time'].toString(),
                              'prize': info[i]['prize'].toString(),
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding:
                                    const EdgeInsets.only(left: 0, top: 20),
                                height: 220,
                                width: MediaQuery.of(context).size.width - 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(info[i]['banner1']),
                                        fit: BoxFit.fitHeight,
                                        colorFilter: ColorFilter.mode(
                                          Colors.white.withOpacity(1),
                                          BlendMode.modulate,
                                        ))),
                              ),
                              Text(
                                info[i]['title1'],
                                style: TextStyle(
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(5.0, 0.0),
                                        blurRadius: 10.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      Shadow(
                                        offset: Offset(10.0, 10.0),
                                        blurRadius: 15.0,
                                        color: Color.fromARGB(124, 0, 0, 0),
                                      ),
                                    ],
                                    fontSize: 38,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          )))
              ]),
            ))
          ]),
        ));
  }
}
