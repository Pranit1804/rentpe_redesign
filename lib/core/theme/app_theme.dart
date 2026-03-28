import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';


abstract final class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.gold,
        surface: AppColors.surface,
        error: AppColors.red,
        onPrimary: AppColors.background,
        onSurface: AppColors.textPrimary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      splashFactory: InkSparkle.splashFactory,
    );
  }
}
