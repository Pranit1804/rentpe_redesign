import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';


class FeatureCards extends StatelessWidget {
  const FeatureCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _Card(
            icon: Icons.auto_awesome_rounded,
            label: AppStrings.rWish,
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: _Card(
            icon: Icons.savings_outlined,
            label: AppStrings.gullak,
            badgeText: '0',
          ),
        ),
      ],
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    required this.icon,
    required this.label,
    this.badgeText,
  });

  final IconData icon;
  final String label;
  final String? badgeText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.goldSubtle,
                ),
                child: Icon(icon, color: AppColors.gold, size: 26),
              ),
              if (badgeText != null)
                Positioned(
                  top: -2,
                  right: -4,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: AppColors.surfaceElevated,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.gold.withValues(alpha: 0.4),
                        width: 0.5,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      badgeText!,
                      style: AppTextStyles.labelMicro.copyWith(
                        color: AppColors.gold,
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            label,
            style: AppTextStyles.label.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
