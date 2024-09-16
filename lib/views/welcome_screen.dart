import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/views/hme_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * .6,
            decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .6,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                color: Color(0xff674AEF),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(100))),
            child: Image.asset(
              'assets/images/books.png',
              scale: .8,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * .4,
                decoration: const BoxDecoration(color: Color(0xff674AEF))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * .4,
              padding: const EdgeInsets.only(top: 40, bottom: 30),
              decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: Column(
                children: [
                  const Text(
                    'Learning is everything',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Learning with pleasure with Dear programmer,Wherever you are. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87, fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Material(
                    color: const Color(0xff674AEF),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Get.to(HomeScreen());
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                        child: Text(
                          'Get Start',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
