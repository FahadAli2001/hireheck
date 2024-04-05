import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool done = false;
  late final StreamDuration _streamDuration;

  @override
  void initState() {
    super.initState();
    setState(() {
      done = true;
    });
    _streamDuration = StreamDuration(
      config: StreamDurationConfig(
          countDownConfig: const CountDownConfig(
            duration: Duration(seconds: 10),
          ),
          onDone: () {
            setState(() {
              done = false;
              log(done.toString());
            });
          }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _streamDuration.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 4,
                color: const Color(0xffBDCADA),
              ),
              Positioned(
                top: size.height * 0.02,
                child: SizedBox(
                  width: size.width,
                  height: size.height * 0.08,
                  // color: Colors.blue,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.03,
                              ),
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
              done == false
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.all(20),
                      child: SlideCountdown(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(70)),
                            color: Color(0xffA17A11)),
                        streamDuration: _streamDuration,
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
                  left: size.width * 0.31,
                  child: Image.asset('assets/job_btn.png')),
              //
              Positioned(
                  top: size.height * 0.75,
                  left: size.width * 0.12,
                  child: Image.asset('assets/rating.png')),
              //
              SizedBox(
                height: size.height * 0.1,
              ),
              //
              Positioned(
                  top: size.height * 1,
                  left: size.width * 0.5,
                  child: Image.asset(
                    'assets/robot2.png',
                    height: size.height * 0.7,
                  )),
              //
              Positioned(
                top: size.height * 1.1,
                left: size.width * 0.12,
                child: Text(
                  'Elevate',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: size.height * 0.14),
                ),
              ),
              Positioned(
                top: size.height * 1.28,
                left: size.width * 0.12,
                child: Text(
                  'Elevate your career with a professional \n resume in minutes',
                  style: TextStyle(
                      color: const Color(0xff7240FF),
                      fontWeight: FontWeight.w900,
                      fontSize: size.height * 0.022),
                ),
              ),
              //
              Positioned(
                  top: size.height * 1.4,
                  left: size.width * 0.25,
                  child: Image.asset('assets/grid.png')),
              //
              Positioned(
                top: size.height * 2.35,
                left: size.width * 0.3,
                right: size.width * 0.38,
                child: SizedBox(
                  width: size.width * 0.25,
                  child: Center(
                    child: Text(
                      maxLines: 3,
                      'This advanced builder will help fast-track your job search. Quickly craft unique, tailored resumes and cover letters to stand out and secure your next role with confidence.',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w900,
                          fontSize: size.height * 0.022),
                    ),
                  ),
                ),
              ),
               //
                Positioned(
                  top: size.height * 3 ,
                    left: size.width * 0.227,
                  child: Image.asset('assets/b1.png')),
                  //
                 
              Positioned(
                  top: size.height * 2.4,
                   left: size.width * 0.135,
                   right: size.width * 0.15,
                  child: Image.asset('assets/b2.png')),
              //
                Positioned(
                  top: size.height * 2.97,
                  right: size.width * 0.204,
                  child: Image.asset('assets/b3.png')),
                  //
                   Positioned(
                  top: size.height * 3.09,
                    left: size.width * 0.35,
                  child: Image.asset('assets/start.png')),
                  //
                    Positioned(
                top: size.height * 2.55,
                left: size.width * 0.12,
                child: Text(
                  'Diverse',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: size.height * 0.14),
                ),
              ),
              Positioned(
                top: size.height * 2.75,
                left: size.width * 0.13,
                child: Text(
                  'A diverse range of templates tailored to\n your industry',
                  style: TextStyle(
                      color: const Color(0xff7240FF),
                      fontWeight: FontWeight.w900,
                      fontSize: size.height * 0.025),
                ),
              ),
               //
               Positioned(
                top: size.height * 2.87,
                left: size.width * 0.33,
                right: size.width * 0.3,
                child: SizedBox(
                  width: size.width * 0.25,
                  child: Center(
                    child: Text(
                      maxLines: 3,
                      'Our job application engine offers elegant, ready-to-use templates. Each design ensures a professional look, auto-formatted to highlight your details impressively.',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w900,
                          fontSize: size.height * 0.02),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
