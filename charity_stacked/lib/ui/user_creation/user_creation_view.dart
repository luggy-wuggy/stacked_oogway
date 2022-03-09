import 'package:animate_do/animate_do.dart';
import 'package:charity_stacked/common/constants.dart';
import 'package:charity_stacked/common/styles.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_padded_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'user_creation_viewmodel.dart';

class UserCreation extends StatelessWidget {
  const UserCreation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserCreationModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: ColorTheme.kPrimaryColor,
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeOutLeft(
                    animate: !model.isStartAnimate,
                    duration: OogwayConstants.pageTransition,
                    child: FadeInLeftBig(
                      animate: model.isStartAnimate,
                      duration: OogwayConstants.pageTransition,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            model.navigateBack();
                          },
                          child: const Icon(
                            Icons.arrow_back_rounded,
                            color: ColorTheme.kSecondaryLightColor,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Hero(
                    transitionOnUserGestures: true,
                    tag: OogwayConstants.oogwayLogoHero,
                    child: Image.asset(
                      'assets/images/oogway_logo.png',
                      width: 90,
                    ),
                  ),
                  FadeOutRight(
                    animate: !model.isStartAnimate,
                    duration: OogwayConstants.pageTransition,
                    child: FadeInRight(
                      animate: model.isStartAnimate,
                      duration: OogwayConstants.pageTransition,
                      child: Text(
                        'So nice to meet you!\nWhat do your friends call you?',
                        textAlign: TextAlign.center,
                        style: AppTextTheme.kTextHeader2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 130),
                  FadeOutRight(
                    animate: !model.isStartAnimate,
                    duration: OogwayConstants.pageTransition,
                    child: FadeInRight(
                      animate: model.isStartAnimate,
                      duration: OogwayConstants.pageTransition,
                      child: Container(
                        height: 70,
                        width: 300,
                        decoration: const BoxDecoration(
                          color: ColorTheme.kOpaquePrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Your name',
                          style: AppTextTheme.kTextContent,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  FadeOutDown(
                    animate: !model.isStartAnimate,
                    duration: OogwayConstants.pageTransition,
                    child: FadeInUp(
                      animate: model.isStartAnimate,
                      duration: OogwayConstants.pageTransition,
                      child: OogwayPaddedButton(
                        text: 'Continue',
                        onTap: () {
                          model.navigateToApp();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => UserCreationModel(),
    );
  }
}
