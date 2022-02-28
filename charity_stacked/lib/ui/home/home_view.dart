import 'package:charity_stacked/ui/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeModel>.nonReactive(
      builder: (context, model, child) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home',
              style: AppTextTheme.kTextHeader,
            ),
            Text(
              'This will be the home screen',
              style: AppTextTheme.kTextContent,
            ),
          ],
        ),
      ),
      viewModelBuilder: () => HomeModel(),
    );
  }
}
