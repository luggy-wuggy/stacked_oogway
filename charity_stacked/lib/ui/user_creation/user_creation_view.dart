import 'package:charity_stacked/ui/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'user_creation_viewmodel.dart';

class UserCreation extends StatelessWidget {
  const UserCreation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserCreationModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: ColorTheme.kPrimaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: "oogway-logo ",
                child: Image.asset(
                  'assets/images/oogway_logo.png',
                  width: 125,
                ),
              ),
              Text(
                'User creation flow',
                style: AppTextTheme.kTextHeader,
              ),
              Text(
                'This will be the user creation flow page, the page where users create there charity preference',
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
          onPressed: model.navigateToApp,
        ),
      ),
      viewModelBuilder: () => UserCreationModel(),
    );
  }
}
