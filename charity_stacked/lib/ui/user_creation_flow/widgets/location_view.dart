import 'package:charity_stacked/common/styles.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_padded_button.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_text_form_field.dart';
import 'package:charity_stacked/ui/user_creation_flow/controller/user_creation_action_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocationView extends ConsumerWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(
          "Let's find the right charities.\nWhere do you live?",
          textAlign: TextAlign.center,
          style: AppTextTheme.kTextHeader2,
        ),
        const SizedBox(height: 130),
        const OogwayTextFormField(
          label: "City or zip code",
        ),
        const Spacer(),
        OogwayPaddedButton(
          text: 'Continue',
          onTap: () {
            ref
                .read(userCreationActionControllerProvider)
                .locationSubmission("name");
          },
        ),
      ],
    );
  }
}
