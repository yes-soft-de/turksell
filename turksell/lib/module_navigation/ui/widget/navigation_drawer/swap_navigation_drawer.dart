
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:turksell/notification_turkish/notification_turkish_routes.dart';
import 'package:turksell/utils/project_color/project_color.dart';

import 'package:url_launcher/url_launcher.dart';

class SwapNavigationDrawer extends StatelessWidget {

  SwapNavigationDrawer();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ProjectColors.pColor,
      width: 252,
      child: Column(
        children: [

          Container(
            height: 140,
            color: ProjectColors.dpColor,
          ),
          // Background

          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(NotificationTurkishtRoutes.ROUTE_notification_turkish, arguments: 0);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 8.0, 0, 8),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  Container(
                    width: 16,
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(NotificationTurkishtRoutes.ROUTE_notification_turkish, arguments: 0);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 8.0, 0, 8),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
                  Container(
                    width: 16,
                  ),
                  Text(
                    "List",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(NotificationTurkishtRoutes.ROUTE_notification_turkish, arguments: 0);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 8.0, 0, 8),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Icon(
                    Icons.block,
                    color: Colors.white,
                  ),
                  Container(
                    width: 16,
                  ),
                  Text(
                    "Block",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(NotificationTurkishtRoutes.ROUTE_notification_turkish, arguments: 0);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 8.0, 0, 8),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  Container(
                    width: 16,
                  ),
                  Text(
                    "Info",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
