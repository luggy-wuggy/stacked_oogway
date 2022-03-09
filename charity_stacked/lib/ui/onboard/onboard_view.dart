import 'package:animate_do/animate_do.dart';
import 'package:charity_stacked/common/constants.dart';
import 'package:charity_stacked/common/styles.dart';
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
        print('build onboard: ${model.isStartAnimate}');

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
                    animate: model.isStartAnimate,
                    delay: const Duration(milliseconds: 300),
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
                  FadeOutLeft(
                    animate: !model.isStartAnimate,
                    duration: Duration(milliseconds: 400),
                    child: FadeInDown(
                      animate: model.isStartAnimate,
                      delay: Duration(milliseconds: 200),
                      child: Text(
                        "Hi there,\nI'm Oogway",
                        style: AppTextTheme.kTextHeader1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  FadeOutLeft(
                    animate: !model.isStartAnimate,
                    duration: Duration(milliseconds: 400),
                    child: FadeInUp(
                      animate: model.isStartAnimate,
                      child: Text(
                        'Your personal\nnonprofit guide',
                        textAlign: TextAlign.center,
                        style: AppTextTheme.kTextContent,
                      ),
                    ),
                  ),
                  const Spacer(),
                  FadeOutLeft(
                    animate: !model.isStartAnimate,
                    duration: Duration(milliseconds: 400),
                    child: FadeInUp(
                      animate: model.isStartAnimate,
                      child: OogwayPaddedButton(
                        text: 'Hi Oogway!',
                        onTap: () {
                          model.navigateToUserCreation();
                        },
                      ),
                    ),
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
