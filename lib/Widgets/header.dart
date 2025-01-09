import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stroll/theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.none,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.56,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              clipBehavior: Clip.none,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black12,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Stroll Bonfire",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.headerText,
                    shadows: [
                      Shadow(
                        color: Colors.black38,
                        blurRadius: 2.0,
                        offset: Offset(0.8, 0.8),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: CustomColors.headerText,
                    size: 32,
                    shadows: [
                        Shadow(
                          color: Colors.black38,
                          blurRadius: 2.0,
                          offset: Offset(0.8, 0.8),
                        ),
                      ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.timer_outlined,
                color: Colors.white,
                size: 18,
                ),
                Text(
                  " 22h 00m",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8.0),
                Icon(CupertinoIcons.person,
                color: Colors.white,
                size: 18,
                ),
                Text(
                  "103",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),);
  }
}
