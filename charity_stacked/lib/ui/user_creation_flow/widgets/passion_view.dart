import 'package:charity_stacked/common/styles.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_padded_button.dart';
import 'package:charity_stacked/ui/user_creation_flow/controller/user_creation_action_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PassionView extends ConsumerWidget {
  const PassionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(
          "Let's find the right charity\nWhat are you passionate about?\n(select all that apply)",
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
            ref
                .read(userCreationActionControllerProvider)
                .passionSubmission("name");
          },
        ),
      ],
    );
  }
}
