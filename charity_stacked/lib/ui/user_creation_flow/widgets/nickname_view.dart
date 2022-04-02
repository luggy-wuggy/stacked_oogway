import 'package:charity_stacked/common/styles.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_padded_button.dart';
import 'package:charity_stacked/ui/shared/widgets/oogway_text_form_field.dart';
import 'package:charity_stacked/ui/user_creation_flow/controller/user_creation_action_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NicknameView extends ConsumerWidget {
  const NicknameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(
          'So nice to meet you!\nWhat do your friends call you?',
          textAlign: TextAlign.center,
          style: AppTextTheme.kTextHeader2,
        ),
        const SizedBox(height: 120),
        OogwayTextFormField(
          label: "Your name",
          onChanged: (String value) {
            if (value.isNotEmpty) {
              ref.read(isButtonPressable.state).state = true;
            } else {
              ref.read(isButtonPressable.state).state = false;
            }
          },
        ),
        const Spacer(),
        OogwayPaddedButton(
          text: 'Continue',
          isButtonPressable: ref.watch(isButtonPressable),
          onTap: () {
            ref
                .read(userCreationActionControllerProvider)
                .nameSubmission("name");
          },
        ),
        const SizedBox(height: 12)
      ],
    );
  }
}

final isButtonPressable = StateProvider<bool>((ref) => false);
