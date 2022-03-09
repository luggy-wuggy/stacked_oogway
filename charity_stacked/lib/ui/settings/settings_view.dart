import 'package:charity_stacked/common/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'settings_viewmodel.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsModel>.nonReactive(
      builder: (context, model, child) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Settings',
              style: AppTextTheme.kTextHeader1,
            ),
            Text(
              'This will be the settings screen',
              style: AppTextTheme.kTextContent,
            ),
            ElevatedButton(
              onPressed: model.navigateBackToOnboard,
              child: const Text('Log out'),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => SettingsModel(),
    );
  }
}
