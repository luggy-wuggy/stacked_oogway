import 'package:charity_stacked/common/constants.dart';
import 'package:charity_stacked/common/styles.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_padded_button.dart';
import 'package:charity_stacked/ui/user_creation_flow/user_creation_controller.dart';
import 'package:charity_stacked/ui/user_creation_flow/widgets/location_view.dart';
import 'package:charity_stacked/ui/user_creation_flow/widgets/nickname_view.dart';
import 'package:charity_stacked/ui/user_creation_flow/widgets/passion_view.dart';
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
          padding: const EdgeInsets.symmetric(vertical: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        ref
                            .read(userCreationFlowControllerProvider)
                            .previousPage();
                      },
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        color: ColorTheme.kSecondaryLightColor,
                        size: 25,
                      ),
                    ),
                    const Spacer(),
                    Hero(
                      transitionOnUserGestures: true,
                      tag: OogwayConstants.oogwayLogoHero,
                      child: Image.asset(
                        'assets/images/oogway_logo.png',
                        width: 100,
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(
                      width: 25,
                    )
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: ref
                      .read(userCreationFlowControllerProvider)
                      .pageController,
                  children: const [
                    NicknameView(),
                    LocationView(),
                    PassionView()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
