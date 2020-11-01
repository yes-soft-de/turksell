
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/notification_turkish/ui/widget/card_notification_turksih.dart';
import 'package:turksell/utils/project_color/project_color.dart';



@provide
class NotificationTurkishPage extends StatefulWidget {
  @override
  _NotificationTurkishPageState createState() => _NotificationTurkishPageState();
}

class _NotificationTurkishPageState extends State<NotificationTurkishPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: ProjectColors.pColor,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [

                CardNotificationTurkish(desc: 'adadadadsa',title: 'hassan',),
                CardNotificationTurkish(desc: 'adadadadsa',title: 'hassan',),
                CardNotificationTurkish(desc: 'adadadadsa',title: 'hassan',),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
