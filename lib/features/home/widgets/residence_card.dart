import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/flip_card.dart';


class ResidenceCard extends StatelessWidget {
  const ResidenceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        AspectRatio(
          aspectRatio: 1.586,
          child: FlipCard(front: const _Front(), back: const _Back()),
        ),
        const SizedBox(height: 12),
        Text(
          AppStrings.swipeHint,
          style: AppTextStyles.labelMicro.copyWith(
            color: AppColors.textMuted,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}





class _Front extends StatelessWidget {
  const _Front();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF222222), Color(0xFF161616), Color(0xFF111111)],
        ),
        border: Border.all(color: AppColors.borderLight, width: 0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.4),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Row(
            children: [
              Text(
                AppStrings.residenceCard,
                style: AppTextStyles.labelMicro.copyWith(
                  color: AppColors.textMuted,
                  letterSpacing: 3,
                  fontSize: 9,
                ),
              ),
              const Spacer(),
              _activeBadge(),
            ],
          ),
          const SizedBox(height: 14),

          
          Row(
            children: [
              
              Container(
                width: 40,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFD4AA50), Color(0xFFB8922E), Color(0xFFD4AA50)],
                  ),
                ),
                child: CustomPaint(painter: _ChipPainter()),
              ),
              const SizedBox(width: 12),
              
              Icon(
                Icons.contactless_outlined,
                color: AppColors.textMuted,
                size: 20,
              ),
            ],
          ),
          const Spacer(),

          
          Text(
            AppStrings.cardNumber,
            style: AppTextStyles.mono.copyWith(
              color: AppColors.textPrimary.withValues(alpha: 0.85),
              fontSize: 16,
              letterSpacing: 3,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 14),

          
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.userName.toUpperCase(),
                      style: AppTextStyles.label.copyWith(
                        color: AppColors.textPrimary.withValues(alpha: 0.9),
                        letterSpacing: 2,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      AppStrings.sinceDate.toUpperCase(),
                      style: AppTextStyles.labelMicro.copyWith(
                        color: AppColors.textMuted,
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
              ),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    AppStrings.rentScoreLabel.toUpperCase(),
                    style: AppTextStyles.labelMicro.copyWith(
                      color: AppColors.gold.withValues(alpha: 0.5),
                      fontSize: 8,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    AppStrings.rentScoreValue,
                    style: AppTextStyles.h1.copyWith(
                      color: AppColors.gold,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _activeBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.success.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 5,
            height: 5,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.success,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            AppStrings.activeStatus,
            style: AppTextStyles.labelMicro.copyWith(
              color: AppColors.success,
              letterSpacing: 0.5,
              fontSize: 9,
            ),
          ),
        ],
      ),
    );
  }
}





class _Back extends StatelessWidget {
  const _Back();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF222222), Color(0xFF161616), Color(0xFF111111)],
        ),
        border: Border.all(
          color: AppColors.gold.withValues(alpha: 0.15),
          width: 0.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.4),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        children: [
          
          Container(
            width: double.infinity,
            height: 36,
            margin: const EdgeInsets.only(top: 20),
            color: const Color(0xFF0A0A0A),
          ),
          const SizedBox(height: 16),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _backAction(Icons.account_balance_wallet_outlined, AppStrings.wallet),
                _backAction(Icons.lock_outline_rounded, AppStrings.locker),
                _backAction(Icons.receipt_long_outlined, AppStrings.transactions),
                _backAction(Icons.history_rounded, AppStrings.history),
              ],
            ),
          ),
          const Spacer(),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.goldSubtle,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.gold.withValues(alpha: 0.25),
                  width: 0.5,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '₹',
                    style: AppTextStyles.h2.copyWith(color: AppColors.gold),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    AppStrings.payRent,
                    style: AppTextStyles.body.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              AppStrings.address,
              textAlign: TextAlign.center,
              style: AppTextStyles.labelMicro.copyWith(
                color: AppColors.textMuted,
                fontSize: 9,
                letterSpacing: 0.3,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _backAction(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.surfaceGlass,
            border: Border.all(
              color: AppColors.gold.withValues(alpha: 0.2),
              width: 0.5,
            ),
          ),
          child: Icon(icon, color: AppColors.gold, size: 18),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: AppTextStyles.labelMicro.copyWith(fontSize: 8),
        ),
      ],
    );
  }
}





class _ChipPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF9A7B2E).withValues(alpha: 0.6)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8;

    final w = size.width;
    final h = size.height;

    
    canvas.drawLine(Offset(0, h * 0.35), Offset(w, h * 0.35), paint);
    canvas.drawLine(Offset(0, h * 0.65), Offset(w, h * 0.65), paint);

    
    canvas.drawLine(Offset(w * 0.5, 0), Offset(w * 0.5, h), paint);

    
    canvas.drawLine(Offset(w * 0.22, h * 0.35), Offset(w * 0.22, h * 0.65), paint);

    
    canvas.drawLine(Offset(w * 0.78, h * 0.35), Offset(w * 0.78, h * 0.65), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
