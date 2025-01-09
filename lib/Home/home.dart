import 'package:flutter/material.dart';
import 'package:stroll/Widgets/header.dart';
import 'package:stroll/Shared/navbar.dart';
import 'package:stroll/Widgets/profile.dart';
import 'package:stroll/Widgets/quiz.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Header(),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.36,
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04,
                        left: 12.0,
                        right: 12.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius:
                                MediaQuery.of(context).size.width * 0.15,
                            blurRadius:
                                MediaQuery.of(context).size.width * 0.15,
                            offset:
                                Offset(16, 16), // Shadow only on the right side
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Answer(),
                          SizedBox(
                            height: 4.0,
                          ),
                          Flexible(
                            child: Options(),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          NextQuestion(),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.46,
              left: 16.0,
              right: 0,
              child: Profile(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
