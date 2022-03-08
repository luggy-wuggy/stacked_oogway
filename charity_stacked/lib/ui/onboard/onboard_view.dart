import 'package:charity_stacked/ui/shared/styles.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_padded_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

import 'onboard_viewmodel.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardModel>.reactive(
      builder: (context, model, child) {
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
                  Hero(
                    tag: "oogway-logo ",
                    child: Image.asset(
                      'assets/images/oogway_logo.png',
                      width: 125,
                    ),
                  ),
                  const SizedBox(height: 48),
                  Text(
                    "Hi there,\nI'm Oogway",
                    style: AppTextTheme.kTextHeader,
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
                      model.navigateToUserCreation();
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => OnboardModel(),
    );
  }
}
