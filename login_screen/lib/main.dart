import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xff8A47EB),
            body: SafeArea(
                child: SingleChildScrollView(
              child: Column(
                children: <Widget>[TopImageContainer(), BottomMenu()],
              ),
            ))));
  }
}

class TopImageContainer extends StatelessWidget {
  const TopImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/bg_img.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                    Color.fromRGBO(225, 225, 225, 0),
                    Color(0xff8A47EB),
                  ])),
            )
          ],
        ));
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: 60,
            child: Center(
              child: Text('Sign up with email',
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            decoration: BoxDecoration(
                color: Color(0xff060606),
                borderRadius: BorderRadius.circular(4)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Divider(
                  color: Color(0xffe2e2e2),
                  height: 2,
                ),
                Text('or use social signup',
                    style: GoogleFonts.poppins(
                        color: Color(0xffe2e2e2),
                        fontWeight: FontWeight.normal)),
                const Divider(
                  color: Color(0xffe2e2e2),
                  height: 2,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              width: double.infinity,
              height: 60,
              child: Center(
                child: Container(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/facebook_icon.png'),
                      Text('Continue with Facebook',
                          style: GoogleFonts.poppins(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              width: double.infinity,
              height: 60,
              child: Center(
                child: Container(
                  width: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/apple_icon.png',
                        width: 32,
                        height: 32,
                      ),
                      Text('Continue with Apple',
                          style: GoogleFonts.poppins(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              width: double.infinity,
              height: 60,
              child: Center(
                child: Container(
                  width: 190,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google_icon.png',
                        width: 32,
                        height: 32,
                      ),
                      Text('Continue with Google',
                          style: GoogleFonts.poppins(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            child: Center(
              child: Text('Already have an account? Log in',
                  style: GoogleFonts.poppins(
                      color: Color(0xffffffff), fontWeight: FontWeight.normal)),
            ),
          )
        ],
      ),
    );
  }
}
