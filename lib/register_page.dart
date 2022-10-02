import 'package:book_app/my_home_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_page.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _showPass = false;
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  var _userNameErr = 'Tai khoan khong hop le';
  var _passNameErr = 'Mat khau khong hop le';
  var _userInvalid = false;
  var _passInvalid = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                  padding: const EdgeInsets.only(left: 20),
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back_ios))),
          body: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            // ignore: prefer_const_constructors
            constraints: BoxConstraints.expand(),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Column(children: [
                  Image.asset('img/logo.png'),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text("Welcome Aboard",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: Container(
                              width: 50,
                              child: Image.asset('img/ic_user.png',
                                  color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2)),
                          labelText: 'Name',
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: Container(
                              width: 50,
                              child: Image.asset('img/ic_phone.png',
                                  color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2)),
                          labelText: 'Phone Number',
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: TextField(
                      controller: _userController,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: Container(
                              width: 50,
                              child: Image.asset('img/ic_mail.png',
                                  color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2)),
                          labelText: 'Email',
                          errorText: _userInvalid ? _userNameErr : null,
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 26.0),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: [
                        TextField(
                          controller: _passController,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          obscureText: !_showPass,
                          decoration: InputDecoration(
                              prefixIcon: Container(
                                  width: 50,
                                  child: Image.asset('img/ic_lock.png',
                                      color: Colors.white)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2)),
                              errorText: _passInvalid ? _passNameErr : null,
                              labelText: 'Password',
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: GestureDetector(
                            onTap: onToggleShowPass,
                            child: Text(_showPass ? 'HIDE' : 'SHOW',
                                style: TextStyle(
                                    color: Color.fromRGBO(29, 185, 84, 1),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromRGBO(29, 185, 84, 1)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8))))),
                          onPressed: onSignInClicked,
                          child: Text('SIGN IN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'Already a User?',
                          style:
                              TextStyle(color: Color(0xff606470), fontSize: 16),
                          children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => Login())));
                              },
                            text: ' Login Now',
                            style: TextStyle(color: Colors.white, fontSize: 16))
                      ]))
                ]),
              ),
            ),
          ),
        ));
  }

  void onSignInClicked() {
    setState(() {
      if (_userController.text.length < 6 ||
          !_userController.text.contains("@")) {
        _userInvalid = true;
      } else {
        _userInvalid = false;
      }
      if (_passController.text.length < 6) {
        _passInvalid = true;
      } else {
        _passInvalid = false;
      }
      if (!_userInvalid && !_passInvalid) {
        //chuyển đổi trang
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
      }
    });
  }

  // Widget gotoHome(BuildContext context) {
  //   return HomePage();
  // }

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }
}
