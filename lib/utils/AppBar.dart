import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

import 'AdaptiveTextSize.dart';
import 'Color.dart';

AppBar dashboardAppbar({title, BuildContext context}) {
  return AppBar(
    backgroundColor: white,
    elevation: 0.0,
    leading: BackButton(
      color: Colors.black,
    ),
    centerTitle: true,
    title: Text(
      title,
      style:
          TextStyle(fontSize: 16, color: black.withOpacity(.5), fontFamily: 'Avenir'),
    ),
    actions: [
      IconButton(
        icon: Icon(
          Feather.archive,
          color: black,
        ),
      )
    ],
  );
}

AppBar searchAppbar({title, BuildContext context}) {
  return AppBar(
    toolbarHeight: 65,
    backgroundColor: white,
    elevation: 0.0,
    leading: BackButton(
      color: Colors.black,
      onPressed: () {
        Get.back();
      },
    ),
    title: Padding(
      padding: EdgeInsets.only(right: 17),
      child: Container(
        height: 50,
        width: double.infinity,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: title,
            border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: backgroundSecondary.withOpacity(.1), width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: backgroundSecondary.withOpacity(.1), width: 2),
            ),
            labelStyle: TextStyle(
              color: Colors.grey,
              fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 12),
            ),
          ),
        ),
      ),
    ),
  );
}


