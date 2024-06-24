import 'package:flutter/material.dart';

import 'custom_divider.dart';

Widget samhitaBox(
    double height, double width, BuildContext context, String s1, String t1) {
  return Align(
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        customDivider(height, width, context),
        Container(
          alignment: Alignment.center,
          height: height / 10,
          width: width / 1.3,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(7.5),
                child: Container(
                  alignment: Alignment.center,
                  height: height / 12,
                  width: width / 5.5,
                  decoration: BoxDecoration(
                      color: const Color(0xfffe774a),
                      borderRadius: BorderRadius.circular(7.5)),
                  child: Text(
                    s1,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              const Spacer(
                // flex: 1,
              ),
              Text(
                t1,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: width / 17, fontWeight: FontWeight.bold),
              ),
              const Spacer(
                // flex: 2,
              )
            ],
          ),
        ),
        customDivider(height, width, context)
      ],
    ),
  );
}
