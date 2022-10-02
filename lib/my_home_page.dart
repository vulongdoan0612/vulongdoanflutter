import 'package:book_app/content_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
                padding: const EdgeInsets.only(left: 20),
                onPressed: () => Get.back(),
                icon: Icon(Icons.arrow_back_ios))),
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
                child: Container(
              height: 700,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/background.jpg'),
                      fit: BoxFit.cover)),
            )),
            Positioned(
                left: 20,
                bottom: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pick Your Favourite',
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    Text('Contests',
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    SizedBox(height: 40),
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 55,
                        child: Text(
                          "We make great design work "
                          "happen with our great community designer",
                          style: TextStyle(color: Colors.white60),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        width: 200,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(29, 185, 84, 1)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Color.fromRGBO(29, 185, 84, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContentPage()),
                            );
                          },
                          child: Text(
                            'Get Start',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ))
                  ],
                )),
            SizedBox(height: 70)
          ],
        ));
  }
}
