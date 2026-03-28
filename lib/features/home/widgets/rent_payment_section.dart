import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';


class RentPaymentSection extends StatelessWidget {
  const RentPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Column(
        children: [
          
          Row(
            children: [
              _infoBlock('RENT DUE', AppStrings.rentDueDate, CrossAxisAlignment.start),
              const Spacer(),
              _infoBlock('FREE RENT', AppStrings.freeRentValue, CrossAxisAlignment.end),
            ],
          ),
          const SizedBox(height: 28),

          
          _PayRentCTA(),
        ],
      ),
    );
  }

  Widget _infoBlock(String label, String value, CrossAxisAlignment align) {
    return Column(
      crossAxisAlignment: align,
      children: [
        Text(
          label,
          style: AppTextStyles.labelMicro.copyWith(
            fontSize: 9,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          value,
          style: AppTextStyles.h1.copyWith(
            color: AppColors.gold,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}

class _PayRentCTA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFD4AA50), Color(0xFFC49A38), Color(0xFFAA852A)],
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.gold.withValues(alpha: 0.25),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: Text(
              '₹',
              style: AppTextStyles.h1.copyWith(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            AppStrings.payRent,
            style: AppTextStyles.h2.copyWith(
              color: const Color(0xFF1A1200),
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
