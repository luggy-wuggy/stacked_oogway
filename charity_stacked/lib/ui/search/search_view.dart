import 'package:charity_stacked/ui/search/search_viewmodel.dart';
import 'package:charity_stacked/ui/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchModel>.nonReactive(
      builder: (context, model, child) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Search',
              style: AppTextTheme.kTextHeader,
            ),
            Text(
              'This will be the search screen',
              style: AppTextTheme.kTextContent,
            ),
          ],
        ),
      ),
      viewModelBuilder: () => SearchModel(),
    );
  }
}
