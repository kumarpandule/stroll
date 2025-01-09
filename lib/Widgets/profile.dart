import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      alignment: Alignment.centerLeft,
      children: <Widget>[
        Container(
          clipBehavior: Clip.none,
          width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.only(
              top: 16.0, left: MediaQuery.of(context).size.width * 0.12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10),
              Container(
                clipBehavior: Clip.none,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
                decoration: BoxDecoration(
                  color: Color(0xFF212121),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Angelina, 28',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                clipBehavior: Clip.none,
                padding: EdgeInsets.only(
                    top: 8.0, left: MediaQuery.of(context).size.width * 0.1),
                child: Text("What is your favorite time of the day?",
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    )),
              ),
            ],
          ),
        ),
        Container(
          clipBehavior: Clip.none,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              // More Dark Gray color
              color: Color(0xFF222222),
              width: 6,
            ),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
        ),
      ],
    );
  }
}