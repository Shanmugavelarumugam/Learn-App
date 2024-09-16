import 'package:flutter/material.dart';
import 'package:medical_app/Widget/description_section.dart';
import 'package:medical_app/Widget/video_section.dart';

class CourseScreen extends StatefulWidget {
  String img;
  CourseScreen(this.img);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isvideosSection = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          foregroundColor: Colors.black,
          title: Text(
            widget.img,
            style:
                const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
          ),
          actions: const [
            Icon(
              Icons.notifications,
              color: Color(0xff674AEF),
              size: 30,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12,
                    image: DecorationImage(
                        image: AssetImage('assets/images/${widget.img}.png'))),
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      color: Color(0xff674AEF),
                      size: 50,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Flutter Complete Course',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: .5),
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                'Created by Dear Programmer',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '55 Videos',
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xffF5F3FF),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      color: isvideosSection
                          ? Color(0xff674AAE)
                          : Color(0xff674AEF),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isvideosSection = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            'Videos',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: isvideosSection
                          ? Color(0xff674AAE)
                          : Color(0xff674AEF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isvideosSection = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: const Text(
                            'Description',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              isvideosSection
                  ? const VideoSection()
                  : const DescriptionSection()
            ],
          ),
        ),
      ),
    );
  }
}
