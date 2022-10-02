import 'package:book_app/my_home_page.dart';
import 'package:book_app/register_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          body: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            // ignore: prefer_const_constructors
            constraints: BoxConstraints.expand(),
            child: Column(children: [
              Image.asset('img/logo1.png'),
              Padding(
                padding: const EdgeInsets.only(bottom: 80.0),
                child: Text(
                  'Login to continue EVENT ANNOUNCEMENT',
                  style: TextStyle(color: Colors.white),
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
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide:
                              BorderSide(color: Colors.white, width: 3)),
                      labelText: 'USERNAME',
                      errorText: _userInvalid ? _userNameErr : null,
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 26.0),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    TextField(
                      controller: _passController,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      obscureText: !_showPass,
                      decoration: InputDecoration(
                          prefixIcon: Container(
                              width: 50,
                              child: Image.asset('img/ic_lock.png',
                                  color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 3)),
                          errorText: _passInvalid ? _passNameErr : null,
                          labelText: 'PASSWORD',
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
              Container(
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Text('FORGOT PASSWORD?',
                      style: TextStyle(color: Color(0xff606470), fontSize: 15)),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))))),
                      onPressed: onSignInClicked,
                      child: Text('SIGN IN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                ),
              ),
              RichText(
                  text: TextSpan(
                      text: 'New user?',
                      style: TextStyle(color: Color(0xff606470), fontSize: 16),
                      children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Register())));
                          },
                        text: 'Sign up for a new account',
                        style: TextStyle(color: Colors.white, fontSize: 16))
                  ]))
            ]),
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
