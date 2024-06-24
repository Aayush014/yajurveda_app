import 'package:flutter/material.dart';
import 'package:yajurveda_app/Provider/main_provider.dart';

import '../../../Model/json_model.dart';

class ShlokScreen extends StatefulWidget {
   ShlokScreen({super.key,required this.vedaProviderTrue,required this.vedaProviderFalse,required this.index});
  VedaProvider vedaProviderTrue;
  VedaProvider vedaProviderFalse;
  int index;

  @override
  State<ShlokScreen> createState() => _ShlokScreenState();
}

class _ShlokScreenState extends State<ShlokScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "यजुर्वेद",
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height / 100,
          ),
          const Divider(
            thickness: 2,
          ),
          SizedBox(
            height: height / 100,
          ),
          Container(
            height: height / 1.5,
            width: width / 1.1,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(20)),
            child:  SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(widget.vedaProviderTrue.vedaslock[widget.index].textGujarati,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height / 100,
          ),
          const Divider()
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: height / 12,
        width: width / 1.3,
        decoration: BoxDecoration(
            color: const Color(0xfffe774a),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Container(
            //   height: height / 30,
            //   width: width / 5,
            //   decoration: BoxDecoration(
            //       color: Theme.of(context).scaffoldBackgroundColor, borderRadius: BorderRadius.circular(10)),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.share),
                Text("     Share")
              ],
            ),
            SizedBox(child: VerticalDivider(
              color: Theme.of(context).scaffoldBackgroundColor,thickness: 2.5,
            )),
            Container(
              height: height / 30,
              width: width / 5,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor, borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(child: VerticalDivider(
              color: Theme.of(context).scaffoldBackgroundColor,thickness: 2.5,
            )),
            Container(
              height: height / 30,
              width: width / 5,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor, borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
      ),
    );
  }
}
