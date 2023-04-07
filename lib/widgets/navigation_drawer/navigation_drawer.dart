import 'package:flutter/material.dart';
import 'package:responsive/widgets/navigation_drawer/drawer_item.dart';
import 'package:responsive/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawerResponsive extends StatelessWidget {
  const NavigationDrawerResponsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: const Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem(title: 'Episodes', icon: Icons.videocam,),
          DrawerItem(title: 'About', icon: Icons.help),
        ],
      ),
    );
  }
}
