import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';


class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        _ActionItem(icon: Icons.verified_user_outlined, label: AppStrings.idCheck),
        _ActionItem(icon: Icons.description_outlined, label: AppStrings.agreement),
        _ActionItem(icon: Icons.share_outlined, label: AppStrings.share),
      ],
    );
  }
}

class _ActionItem extends StatelessWidget {
  const _ActionItem({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.surfaceGlass,
            border: Border.all(
              color: AppColors.gold.withValues(alpha: 0.15),
              width: 0.5,
            ),
          ),
          child: Icon(icon, color: AppColors.gold.withValues(alpha: 0.8), size: 21),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: AppTextStyles.labelMicro.copyWith(
            fontSize: 10,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
