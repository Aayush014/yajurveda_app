import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../Utils/Theme/theme_provider.dart';

Widget themeChangeButton(UniqueKey animationKey) {

  return TweenAnimationBuilder(
    key: animationKey,
    tween: Tween<double>(begin: 10, end: 30),
    duration: const Duration(milliseconds: 400),
    builder: (context, sizeValue, child) => TweenAnimationBuilder(
      key: animationKey,
      tween: Tween<double>(begin: 1, end: 6),
      duration: const Duration(milliseconds: 400),
      builder: (context, value, child) {
        return Transform.rotate(
          angle: value,
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              animationKey = UniqueKey();
              Provider.of<ThemeProvider>(context, listen: false)
                  .toggleTheme();
            },
            child: Icon(
              (Provider.of<ThemeProvider>(context).isDarkMode)
                  ? CupertinoIcons.sun_max_fill
                  : CupertinoIcons.moon,
              color: Theme.of(context).colorScheme.tertiary,
              size: sizeValue,
            ),
          ),
        );
      },
    ),
  );
}