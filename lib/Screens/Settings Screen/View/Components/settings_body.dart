import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yajurveda_app/Provider/main_provider.dart';
import 'package:yajurveda_app/Screens/Settings%20Screen/View/Components/theme_toggle.dart';

import 'custom_list_tile.dart';

Widget settingBody(double height, var animationKey, BuildContext context) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          // SizedBox(
          //   height: height / 40,
          // ),
          settingListTile(
            height,
            CupertinoButton(
              onPressed: () {

              },
              child: const Text(
                "English",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xfffe774a),
                ),
              ),
            ),
            Icons.language,
            "Language",
          ),
          settingListTile(
            height,
            themeChangeButton(animationKey),
            Icons.format_paint_rounded,
            "Change Theme",
          ),
          settingListTile(
            height,
            null,
            Icons.person_2,
            "Community",
          ),
          settingListTile(
            height,
            const Text(
              "Aayush Patel",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xfffe774a),
              ),
            ),
            Icons.code_off,
            "Developer",
          ),
          settingListTile(
            height,
            null,
            Icons.star,
            "Liked App? Rate Us!",
          ),
          settingListTile(
            height,
            null,
            CupertinoIcons.share,
            "Share App",
          ),
          settingListTile(
            height,
            null,
            Icons.lock,
            "Privacy Policy",
          ),
          settingListTile(
            height,
            null,
            Icons.block,
            "Get Premium - No ads!",
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text("YAJURVED v1.4",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    ),
  );
}
