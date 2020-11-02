

import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/generated/l10n.dart';
import 'package:turksell/anime_auth/account_page/ui/screen/account_page.dart';
import 'package:turksell/history_page/ui/screen/history_list_page.dart';
import 'package:turksell/home_list/ui/screen/home_list.dart';
import 'package:turksell/notification_turkish/ui/screen/notification_turkish_page.dart';
import 'package:turksell/utils/project_color/project_color.dart';


@provide

class HomeWithNavigationButtom extends StatefulWidget {
 // HomeWithNavigationButtom({Key key}) : super(key: key);

  @override
  _HomeWithNavigationButtomState createState() => _HomeWithNavigationButtomState();
}


class _HomeWithNavigationButtomState extends State<HomeWithNavigationButtom> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  final List<Widget> _widgetOptions = <Widget>[
    HomeList(),
    HistoryListPage(),
    AccountPage(),
    NotificationTurkishPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

      backgroundColor: ProjectColors.pColor,

        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(S.of(context).home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text(S.of(context).history),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(S.of(context).profile),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text(S.of(context).setting),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
