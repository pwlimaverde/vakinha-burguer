import 'text_styles.dart';
import 'package:flutter/material.dart';

import 'colors_app.dart';

class AppStyles {
  static AppStyles? _instance;
  AppStyles._();

  static AppStyles get instace {
    _instance ??= AppStyles._();
    return _instance!;
  }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        backgroundColor: ColorsApp.instace.primary,
        textStyle: TextStyles.instace.textButtonLabel,
      );
}

extension AppStylesExtensions on BuildContext {
  AppStyles get appStyles => AppStyles.instace;
}
