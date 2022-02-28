import 'package:charity_stacked/ui/home/home_view.dart';
import 'package:charity_stacked/ui/search/search_view.dart';
import 'package:charity_stacked/ui/settings/settings_view.dart';
import 'package:charity_stacked/ui/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bottom_nav_root_viewmodel.dart';

class BottomNavRoot extends StatelessWidget {
  const BottomNavRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavRootModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: getViewForIndex(model.currentIndex),
        backgroundColor: ColorTheme.kPrimaryColor,
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 17, 48, 56),
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: const [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.home_rounded,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.person_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => BottomNavRootModel(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const Home();
      case 1:
        return const Search();
      case 2:
        return const Settings();
      default:
        return const Home();
    }
  }
}
