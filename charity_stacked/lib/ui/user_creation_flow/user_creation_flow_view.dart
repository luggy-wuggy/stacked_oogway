import 'package:charity_stacked/common/constants.dart';
import 'package:charity_stacked/common/styles.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_padded_button.dart';
import 'package:charity_stacked/ui/user_creation_flow/user_creation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserCreation extends ConsumerWidget {
  const UserCreation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorTheme.kPrimaryColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () async {
                    ref.read(userCreationControllerProvider).navigateToApp();
                  },
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    color: ColorTheme.kSecondaryLightColor,
                    size: 25,
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
              Text(
                'So nice to meet you!\nWhat do your friends call you?',
                textAlign: TextAlign.center,
                style: AppTextTheme.kTextHeader2,
              ),
              const SizedBox(height: 130),
              Container(
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
              const Spacer(),
              OogwayPaddedButton(
                text: 'Continue',
                onTap: () {
                  ref.read(userCreationControllerProvider).navigateToApp();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
