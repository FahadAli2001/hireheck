import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: const Color(0xffBDCADA),
          ),
          Positioned(
            top: size.height * 0.02,
            child: SizedBox(
              width: size.width,
              height: size.height * 0.08,
              // color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Image.asset("assets/logo.png"),
                          SizedBox(
                            width: size.width * 0.005,
                          ),
                          Text(
                            "h!rehack",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: size.height * 0.025,
                                color: const Color(0xff7240FF),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(
                              fontSize: size.height * 0.015,
                              color: const Color(0xff7240FF),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.025,
                          ),
                          Text(
                            "Blog",
                            style: TextStyle(
                              fontSize: size.height * 0.015,
                              color: const Color(0xff7240FF),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.025,
                          ),
                          Text(
                            "Faqs",
                            style: TextStyle(
                              fontSize: size.height * 0.015,
                              color: const Color(0xff7240FF),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.025,
                          ),
                          Text(
                            "Contact",
                            style: TextStyle(
                              fontSize: size.height * 0.015,
                              color: const Color(0xff7240FF),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: size.height * 0.015,
                              color: const Color(0xff7240FF),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.005,
                          ),
                          Image.asset('assets/Login.png')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          //
          Positioned(
              top: size.height * 0.05,
              left: size.width * 0.5,
              child: Image.asset('assets/r1.png')),
          //
          Positioned(
              top: size.height * 0.05,
              left: size.width * 0.55,
              child: Image.asset('assets/robot.png')),
          //
          Positioned(
            top: size.height * 0.15,
            left: size.width * 0.12,
            child: Text(
              'Dream job',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: size.height * 0.14),
            ),
          ),
          Positioned(
            top: size.height * 0.33,
            left: size.width * 0.12,
            child: Text(
              'Is within teach with AI-Powered,\n tailored job applications',
              style: TextStyle(
                  color: const Color(0xff7240FF),
                  fontWeight: FontWeight.w900,
                  fontSize: size.height * 0.028),
            ),
          ), //
          Positioned(
              top: size.height * 0.45,
              left: size.width * 0.3,
              child: Image.asset('assets/data.png')),
          //
          Positioned(
              top: size.height * 0.65,
              left: size.width * 0.3,
              child: Image.asset('assets/job_btn.png')),
          //
          Positioned(
              top: size.height * 0.75,
              left: size.width * 0.12,
              child: Image.asset('assets/rating.png')),
        ],
      ),
    );
  }
}
