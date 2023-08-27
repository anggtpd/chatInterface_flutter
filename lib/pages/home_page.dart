import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/images/profpic.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Roseanne Park',
              style: TextStyle(
                fontSize: 20,
                color: whiteColor,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Musician',
              style: TextStyle(
                color: lightBlueColor,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadiusDirectional.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          buildFriendOrGroupEntry(
                            'assets/images/friend1.png',
                            'Tata',
                            'okay',
                            'now',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          buildFriendOrGroupEntry(
                            'assets/images/friend2.png',
                            'Taylor',
                            'Please',
                            '22.30',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          buildFriendOrGroupEntry(
                            'assets/images/group1.png',
                            'Blackpink',
                            'No wayyyy',
                            'now',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          buildFriendOrGroupEntry(
                            'assets/images/group2.png',
                            'Flutter Club',
                            'Try to look into...',
                            '00.03',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          buildFriendOrGroupEntry(
                            'assets/images/group2.png',
                            'Flutter Club',
                            'Try to look into...',
                            '00.03',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
