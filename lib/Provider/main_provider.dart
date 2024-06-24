import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../Model/json_model.dart';

class VedaProvider with ChangeNotifier {
  List<Veda> _vedasa = [];
  String name ='';

  List<Veda> get vedas => _vedasa;
  List<Veda> vedaslock=[];

  VedaProvider() {
    loadVedas();
  }

  void setVedas(List<Veda> vedas) {
    _vedasa = vedas;
    notifyListeners();
  }

  Future<void> loadVedas() async {
    String jsonString = await rootBundle.loadString('Assets/JSON/sukal.json');
    List<dynamic> jsonResponse = jsonDecode(jsonString);

    vedaslock= jsonResponse.map((data) => Veda.fromJson(data)).toList();
    // Provider.of<VedaProvider>(context, listen: false).setVedas(vedas);
  }
  List language=[];

  void changeLanguage({required String name}) {
    this.name = name;
    if(this.name=='text')
    {
      language.clear();
      vedaslock.forEach((doheModal) {
        language.add(doheModal.text);
      });
    } else if(this.name=='textGujarati')
    {
      language.clear();
      vedaslock.forEach((doheModal) {
        language.add(doheModal.textGujarati);
      });
    } else{
      language.clear();
      vedaslock.forEach((doheModal) {
        language.add(doheModal.textHindi);
      });
    }

    notifyListeners();
  }

  Veda getVedaByChapter(int chapter) {
    return _vedasa.firstWhere((veda) => veda.chapter == chapter);
  }
}
