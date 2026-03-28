import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          
          _buildWordmark(),
          const Spacer(),
          
          _pill(AppStrings.locationCode, Icons.location_on_outlined),
          const SizedBox(width: 12),
          
          _iconCircle(Icons.search_rounded),
          const SizedBox(width: 8),
          _notificationIcon(),
        ],
      ),
    );
  }

  Widget _buildWordmark() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.gold, width: 1.2),
          ),
          alignment: Alignment.center,
          child: Text(
            'R',
            style: AppTextStyles.h2.copyWith(
              color: AppColors.gold,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'RENTEN',
                style: AppTextStyles.label.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2.5,
                  fontSize: 13,
                ),
              ),
              TextSpan(
                text: 'PE',
                style: AppTextStyles.label.copyWith(
                  color: AppColors.gold,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2.5,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pill(String text, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.surfaceGlass,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: AppTextStyles.labelMicro),
          const SizedBox(width: 4),
          Icon(icon, size: 13, color: AppColors.gold),
        ],
      ),
    );
  }

  Widget _iconCircle(IconData icon) {
    return Container(
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.surfaceGlass,
      ),
      child: Icon(icon, size: 17, color: AppColors.textSecondary),
    );
  }

  Widget _notificationIcon() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _iconCircle(Icons.notifications_none_rounded),
        Positioned(
          top: -1,
          right: 0,
          child: Container(
            width: 14,
            height: 14,
            decoration: const BoxDecoration(
              color: AppColors.red,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              '2',
              style: AppTextStyles.labelMicro.copyWith(
                color: Colors.white,
                fontSize: 8,
                fontWeight: FontWeight.w700,
                letterSpacing: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
