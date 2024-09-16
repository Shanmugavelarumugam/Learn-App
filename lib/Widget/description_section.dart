import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Text(
            'Flutter is a framework used by dart programming '
            'language is developed by Google.'
            ' Flutter is (UserInterface) UI toolkit for developing a application.'
            ' Flutter itself a framework and SDK'
            ' for developing cress platform application. ',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Course Length :',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.timer,
                color: Color(0xff674AEF),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '26 Hours',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '4.5',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
