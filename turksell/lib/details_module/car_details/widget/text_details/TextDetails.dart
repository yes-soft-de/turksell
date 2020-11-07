

import 'package:flutter/material.dart';

class TextDetails extends StatelessWidget {
  String desc;
  String title;

  TextDetails({this.desc='', this.title=''});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('$title:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black)),
            SizedBox(width: 4,),
            Flexible(child: Text('$desc',
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black)))
          ],
        ),
        SizedBox(height: 8,),
      ],
    );
  }
}
