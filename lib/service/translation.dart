import 'package:flutter_localization/utils_lang/ar.dart';
import 'package:flutter_localization/utils_lang/en.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Translation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
