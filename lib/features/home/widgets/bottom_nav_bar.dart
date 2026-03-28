import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, this.currentIndex = 0});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.background,
        border: Border(
          top: BorderSide(color: AppColors.border, width: 0.5),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavItem(icon: Icons.home_rounded, label: AppStrings.home, isActive: currentIndex == 0),
              _NavItem(icon: Icons.grid_view_rounded, label: AppStrings.infotainment, isActive: currentIndex == 1),
              _NavItem(icon: Icons.chat_bubble_outline_rounded, label: AppStrings.chat, isActive: currentIndex == 2),
              _NavItem(icon: Icons.route_rounded, label: AppStrings.rJourney, isActive: currentIndex == 3),
              _NavItem(icon: Icons.person_outline_rounded, label: AppStrings.account, isActive: currentIndex == 4),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    required this.isActive,
  });

  final IconData icon;
  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final color = isActive ? AppColors.gold : AppColors.textMuted;

    return SizedBox(
      width: 60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOut,
            width: isActive ? 4 : 0,
            height: 4,
            margin: const EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              color: isActive ? AppColors.gold : Colors.transparent,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Icon(icon, color: color, size: 22),
          const SizedBox(height: 5),
          Text(
            label,
            style: AppTextStyles.labelMicro.copyWith(
              color: color,
              fontSize: 9,
              letterSpacing: 0.3,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
