import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stroll/Widgets/icon_badge.dart';
import 'package:stroll/theme.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      elevation: 0.0,
      backgroundColor: CustomColors.nevbar,
      height: MediaQuery.of(context).size.height * 0.06,
      destinations: <Widget>[
        ImageIcon(
          AssetImage(
            'assets/icons/poker-cards 2.png',
          ),
          color: Colors.white,
        ),
        IconBadge(
          icon: CupertinoIcons.flame,
          onTap: () {},
        ),
        ImageBadge(
          icon: ImageIcon(
            AssetImage(
              'assets/icons/bubble.png',
            ),
            color: Colors.white,
          ),
          onTap: () {},
          badgeCount: 2,
        ),
        Icon(
          CupertinoIcons.person,
          color: Colors.white,
        ),
      ],
    );
  }
}
