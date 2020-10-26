
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/history_page/ui/widget/card_history.dart';
import 'package:turksell/utils/project_color/project_color.dart';



@provide
class HistoryListPage extends StatefulWidget {
  @override
  _HistoryListPageState createState() => _HistoryListPageState();
}

class _HistoryListPageState extends State<HistoryListPage> {
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

                CardHistory(desc: "adadadadsa",title: "hassan",type: "BYU",),
                CardHistory(desc: "adadadadsa",title: "hassan",type: "BYU",),
                CardHistory(desc: "adadadadsa",title: "hassan",type: "BYU",),
                CardHistory(desc: "adadadadsa",title: "hassan",type: "BYU",),
                CardHistory(desc: "adadadadsa",title: "hassan",type: "BYU",),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
