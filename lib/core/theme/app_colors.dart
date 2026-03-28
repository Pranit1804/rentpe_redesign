import 'package:flutter/material.dart';


abstract final class AppColors {
  
  static const Color background = Color(0xFF090909);
  static const Color surface = Color(0xFF131313);
  static const Color surfaceElevated = Color(0xFF1B1B1B);
  static const Color surfaceGlass = Color(0x14FFFFFF); 

  
  static const Color gold = Color(0xFFCBA135);
  static const Color goldSoft = Color(0x33CBA135); 
  static const Color goldSubtle = Color(0x1ACBA135); 

  
  static const LinearGradient cardGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1E1E1E), Color(0xFF141414)],
  );

  
  static const Color textPrimary = Color(0xFFF5F5F5);
  static const Color textSecondary = Color(0xFF707070);
  static const Color textMuted = Color(0xFF4A4A4A);

  
  static const Color border = Color(0xFF1F1F1F);
  static const Color borderLight = Color(0xFF2A2A2A);
  static const Color success = Color(0xFF34C759);
  static const Color red = Color(0xFFFF3B30);
}
