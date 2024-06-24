import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yajurveda_app/Screens/Samhita%20Screen/View/shlok_screen.dart';

import '../../../Provider/main_provider.dart';
import '../../../Utils/numbers.dart';
import '../../Home Screen/View/Components/samhita_box.dart';

class KrishnaYajurVeda extends StatelessWidget {
   KrishnaYajurVeda({super.key,required this.vedaProviderTrue,required this.vedaProviderFalse});
  VedaProvider vedaProviderTrue ;
  VedaProvider vedaProviderFalse ;

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
       body: SingleChildScrollView(
         child: Padding(
           padding: EdgeInsets.symmetric(
             horizontal: width / 20,
             vertical: height / 40,
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 "शुक्लयजुर्वेद",
                 style: Theme.of(context).textTheme.bodySmall!.copyWith(
                   fontSize: width / 15,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               const Text(""),
               ...List.generate(
                 40,
                     (index) => Padding(
                   padding: EdgeInsets.only(bottom: height / 70),
                   child: CupertinoButton(
                     padding: EdgeInsets.zero,
                     onPressed: () =>
                         Navigator.of(context).push(CupertinoPageRoute(
                           builder: (context) =>  ShlokScreen(vedaProviderFalse: vedaProviderFalse,index: index+39,vedaProviderTrue:vedaProviderTrue),
                         )),
                     child: samhitaBox(
                       height,
                       width,
                       context,
                       indexDigits[index],
                       hindiOrdinals[index],
                     ),
                   ),
                 ),
               )
             ],
           ),
         ),
       ),
    );
  }
}
