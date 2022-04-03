import 'package:charity_stacked/app/app.router.dart';
import 'package:charity_stacked/common/constants.dart';
import 'package:charity_stacked/common/styles.dart';
import 'package:charity_stacked/ui/onboard/onboard_controller.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_padded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Onboard extends ConsumerWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorTheme.kPrimaryColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(bottom: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 128),
              Hero(
                transitionOnUserGestures: true,
                tag: OogwayConstants.oogwayLogoHero,
                child: Image.asset(
                  'assets/images/oogway_logo.png',
                  width: 125,
                ),
              ),
              const SizedBox(height: 48),
              Text(
                "Hi there,\nI'm Oogway",
                style: AppTextTheme.kTextHeader1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'Your personal\nnonprofit guide',
                textAlign: TextAlign.center,
                style: AppTextTheme.kTextContent,
              ),
              const Spacer(),
              OogwayPaddedButton(
                text: 'Hi Oogway!',
                onTap: () {
                  ref
                      .read(onboardNotifier.notifier)
                      .pushFromOnboard(Routes.userCreation);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
