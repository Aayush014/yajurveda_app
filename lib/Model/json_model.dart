import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../Provider/main_provider.dart';

class Veda {
  final String veda;
  final String samhita;
   int? chapter;
   int? adhyaya;
  final String text; // List of shloks for each chapter
  final String textHindi;
  final String textGujarati;

  Veda({
    required this.veda,
    required this.samhita,
    this.chapter,
    this.adhyaya,
    required this.text,
    required this.textHindi,
    required this.textGujarati,
  });

  factory Veda.fromJson(Map<String, dynamic> json) {
    return Veda(
      veda: json['veda'],
      samhita: json['samhita'],
      chapter: json['chapter'],
      text: json["text"],
      adhyaya: json['adhyaya'],
      textHindi: json['text_hindi'],
      textGujarati: json['text_gujrati'],
    );
  }
}


