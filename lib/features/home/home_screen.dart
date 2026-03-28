import 'package:flutter/material.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/residence_card.dart';
import 'widgets/quick_actions.dart';
import 'widgets/feature_cards.dart';
import 'widgets/rent_payment_section.dart';
import 'widgets/bottom_nav_bar.dart';
import '../../core/theme/app_colors.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 4,
                  bottom: 24,
                ),
                child: Column(
                  children: const [
                    HomeAppBar(),
                    SizedBox(height: 28),
                    ResidenceCard(),
                    SizedBox(height: 32),
                    QuickActions(),
                    SizedBox(height: 28),
                    FeatureCards(),
                    SizedBox(height: 24),
                    RentPaymentSection(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            const BottomNavBar(currentIndex: 0),
          ],
        ),
      ),
    );
  }
}
