import 'package:charity_stacked/common/styles.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_padded_button.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_text_form_field.dart';
import 'package:charity_stacked/ui/user_creation_flow/controller/user_creation_action_controller.dart';
import 'package:charity_stacked/ui/user_creation_flow/user_creation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocationView extends ConsumerStatefulWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  LocationViewState createState() => LocationViewState();
}

class LocationViewState extends ConsumerState<LocationView> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      FocusScope.of(context).requestFocus(ref.read(locationFocusProvider));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Let's find the right charities.\nWhere do you live?",
          textAlign: TextAlign.center,
          style: AppTextTheme.kTextHeader2,
        ),
        const SizedBox(height: 120),
        OogwayTextFormField(
          focusNode: ref.watch(locationFocusProvider),
          label: "City or zip code",
        ),
        const Spacer(),
        OogwayPaddedButton(
          text: 'Continue',
          onTap: () {
            FocusScope.of(context).unfocus();

            ref
                .read(userCreationActionControllerProvider)
                .locationSubmission("name");
          },
        ),
        const SizedBox(height: 12)
      ],
    );
  }
}
