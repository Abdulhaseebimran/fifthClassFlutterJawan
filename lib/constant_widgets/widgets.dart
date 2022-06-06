import 'package:flutter/material.dart';

import 'app_color.dart';

Widget ChatsUI (String str, colorr, imagee , textt, iconn) {
  return Column(
  children: [
 ListTile(
            tileColor: colorr,
            leading: CircleAvatar(
              backgroundImage:  imagee),
             title: Text(str),
             trailing: Column(
               children: [
                 Text(textt), Icon(iconn)
               ],
             ),
 ),
  ],
  );
}