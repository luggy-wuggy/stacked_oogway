import 'package:animate_do/animate_do.dart';
import 'package:charity_stacked/app/app.router.dart';
import 'package:charity_stacked/common/constants.dart';
import 'package:charity_stacked/common/styles.dart';
import 'package:charity_stacked/ui/onboard/onboard_controller.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_padded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stacked/stacked.dart';

import 'onboard_viewmodel.dart';

class Onboard extends ConsumerWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardController = ref.watch(onboardNotifier);

    print(onboardController);

    return Scaffold(
      backgroundColor: ColorTheme.kPrimaryColor,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(bottom: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 128),
              FadeInDown(
                animate: onboardController == OnboardAnimationState.start,
                duration: const Duration(milliseconds: 700),
                child: Hero(
                  transitionOnUserGestures: true,
                  tag: OogwayConstants.oogwayLogoHero,
                  child: Image.asset(
                    'assets/images/oogway_logo.png',
                    width: 125,
                  ),
                ),
              ),
              const SizedBox(height: 48),
              if (onboardController == OnboardAnimationState.start)
                FadeInDown(
                  delay: const Duration(milliseconds: 400),
                  child: Text(
                    "Hi there,\nI'm Oogway",
                    style: AppTextTheme.kTextHeader1,
                    textAlign: TextAlign.center,
                  ),
                ),
              if (onboardController == OnboardAnimationState.push)
                FadeOutLeft(
                  duration: const Duration(milliseconds: 400),
                  child: Text(
                    "Hi there,\nI'm Oogway",
                    style: AppTextTheme.kTextHeader1,
                    textAlign: TextAlign.center,
                  ),
                ),
              if (onboardController == OnboardAnimationState.pop)
                FadeInLeftBig(
                  child: Text(
                    "Hi there,\nI'm Oogway",
                    style: AppTextTheme.kTextHeader1,
                    textAlign: TextAlign.center,
                  ),
                ),
              const SizedBox(height: 8),
              if (onboardController == OnboardAnimationState.start)
                FadeInUp(
                  delay: Duration(milliseconds: 800),
                  child: Text(
                    'Your personal\nnonprofit guide',
                    textAlign: TextAlign.center,
                    style: AppTextTheme.kTextContent,
                  ),
                ),
              if (onboardController == OnboardAnimationState.push)
                FadeOutLeft(
                  duration: const Duration(milliseconds: 400),
                  child: Text(
                    'Your personal\nnonprofit guide',
                    textAlign: TextAlign.center,
                    style: AppTextTheme.kTextContent,
                  ),
                ),
              if (onboardController == OnboardAnimationState.pop)
                FadeInLeftBig(
                  delay: Duration(milliseconds: 150),
                  //duration: const Duration(milliseconds: 1000),
                  //duration: const Duration(milliseconds: 1200),
                  child: Text(
                    'Your personal\nnonprofit guide',
                    textAlign: TextAlign.center,
                    style: AppTextTheme.kTextContent,
                  ),
                ),
              const Spacer(),
              if (onboardController == OnboardAnimationState.start)
                FadeInUp(
                  delay: Duration(milliseconds: 1100),
                  child: OogwayPaddedButton(
                    text: 'Hi Oogway!',
                    onTap: () {
                      ref
                          .watch(onboardNotifier.notifier)
                          .pushFromOnboard(Routes.userCreation);
                    },
                  ),
                ),
              if (onboardController == OnboardAnimationState.push)
                FadeOutLeft(
                  duration: Duration(milliseconds: 250),
                  child: OogwayPaddedButton(
                    text: 'Hi Oogway!',
                    onTap: () {
                      ref
                          .watch(onboardNotifier.notifier)
                          .pushFromOnboard(Routes.userCreation);
                    },
                  ),
                ),
              if (onboardController == OnboardAnimationState.pop)
                FadeInLeftBig(
                  //duration: const Duration(milliseconds: 900),
                  delay: Duration(milliseconds: 400),
                  child: OogwayPaddedButton(
                    text: 'Hi Oogway!',
                    onTap: () {
                      ref
                          .watch(onboardNotifier.notifier)
                          .pushFromOnboard(Routes.userCreation);
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
