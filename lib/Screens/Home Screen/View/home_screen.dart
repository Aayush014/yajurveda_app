import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yajurveda_app/Provider/main_provider.dart';
import '../../../Utils/numbers.dart';
import '../../Samhita Screen/View/krishna_yajur_veda.dart';
import '../../Samhita Screen/View/shukla_yajur_veda.dart';
import 'Components/custom_app_bar.dart';
import 'Components/samhita_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    VedaProvider vedaProviderTrue = Provider.of<VedaProvider>(context);
    VedaProvider vedaProviderFalse = Provider.of<VedaProvider>(context,listen: false);
    return Scaffold(
      appBar: customAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width / 20,
          vertical: height / 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "संहिता",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: width / 15,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Text(""),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) =>  ShuklaYajurVeda(vedaProviderTrue: vedaProviderTrue,vedaProviderFalse: vedaProviderFalse,),
              )),
              child: samhitaBox(height, width, context,indexDigits[0],"शुक्ल यजुर्वेद"),
            ),
            const Spacer(
              flex: 1,
            ),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) =>  KrishnaYajurVeda(vedaProviderTrue: vedaProviderTrue,vedaProviderFalse: vedaProviderFalse,),
                ),
              ),
              child: samhitaBox(height, width, context,indexDigits[1],"कृष्ण यजुर्वेद"),
            ),
            const Spacer(
              flex: 20,
            )
          ],
        ),
      ),
    );
  }
}
