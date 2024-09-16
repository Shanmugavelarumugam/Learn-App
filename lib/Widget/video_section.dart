import 'package:flutter/material.dart';

List videoList = [
  'Introduction of flutter',
  'Installation of flutter on window',
  'Adding path setup',
  'Creating our first project'
];

class VideoSection extends StatelessWidget {
  const VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: videoList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: index == 0 ? Color(0xff674AEF) : Color(0xff674AAE),
                  shape: BoxShape.circle),
              child: Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: Text(
              videoList[index],
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              '25 min 55 sec',
              style: TextStyle(color: Colors.black54),
            ),
          );
        });
  }
}
