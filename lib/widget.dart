import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

Widget buildFriendOrGroupEntry(
    String imageName, String name, String message, String time) {
  return Row(
    children: [
      Image.asset(
        imageName,
        height: 60,
        width: 60,
      ),
      SizedBox(
        width: 12,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: titleTextStyle,
          ),
          Text(
            message,
            style: subtitileTextStyle.copyWith(
              color: blackColor,
            ),
          ),
        ],
      ),
      Spacer(),
      Text(
        time,
        style: subtitileTextStyle,
      ),
    ],
  );
}
