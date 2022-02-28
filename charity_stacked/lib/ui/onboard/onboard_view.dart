import 'package:charity_stacked/ui/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

import 'onboard_viewmodel.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: ColorTheme.kPrimaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/lottie/oogway_onboard.json',
              ),
              Text(
                'Onboard',
                style: AppTextTheme.kTextHeader,
              ),
              Text(
                'This will be the onboard page, the first page the user will see',
                textAlign: TextAlign.center,
                style: AppTextTheme.kTextContent,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.arrow_forward_ios,
            color: ColorTheme.kPrimaryColor,
          ),
          backgroundColor: Colors.white,
          onPressed: model.navigateToUserCreation,
        ),
      ),
      viewModelBuilder: () => OnboardModel(),
    );
  }
}
