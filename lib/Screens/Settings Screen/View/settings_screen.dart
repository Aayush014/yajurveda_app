import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Provider/main_provider.dart';
import 'Components/settings_body.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var animationKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "यजुर्वेद",
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Do you want to change the language?'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Provider.of<VedaProvider>(context, listen: false)
                                  .changeLanguage(name: result);
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Yes',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('No'))
                      ],
                    );
                  });
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 'textHindi',
                  child: Text('Hindi'),
                ),
                const PopupMenuItem(
                  value: 'textGujarati',
                  child: Text('Gujarati'),
                ),
                const PopupMenuItem(
                  value: 'text',
                  child: Text('Sanskrit'),
                ),
              ];
            },
          ),
        ],
      ),
      body: settingBody(height, animationKey, context),
    );
  }
}
