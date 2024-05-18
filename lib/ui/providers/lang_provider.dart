// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';

class LangsSupported {
  static const SPANISH = 'ESPAÑOL';
  static const ENGLISH = 'ENGLISH';

  static const langs_images = {
    LangsSupported.SPANISH:
        'https://raw.githubusercontent.com/reitmas32/portfolio/v2.0.0/assets/mex.png',
    LangsSupported.ENGLISH:
        'https://raw.githubusercontent.com/reitmas32/portfolio/v2.0.0/assets/usa.png'
  };

  static const data = {
    "hi": {
      LangsSupported.SPANISH: "Hola👋, soy Rafael Zamora",
      LangsSupported.ENGLISH: 'Hi👋, I\'m Rafael Zamora',
    },
    "title": {
      LangsSupported.SPANISH: "Desarrollador de Software",
      LangsSupported.ENGLISH: "Software Developer",
    },
  };
}

// Define the StateNotifier
class LangNotifier extends StateNotifier<String> {
  LangNotifier() : super(LangsSupported.SPANISH);

  void setLang(String lang) {
    state = lang;
  }
}

// Create the StateNotifierProvider
final langProvider = StateNotifierProvider<LangNotifier, String>((ref) {
  return LangNotifier();
});
