import 'package:charity_stacked/ui/user_creation_flow/user_creation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserCreationActionController extends ChangeNotifier {
  final UserCreationFlowController userCreationFlowController;

  UserCreationActionController(
    this.userCreationFlowController,
  );

  UserCreationFlowState _userCreationFlowState =
      UserCreationFlowState.presenting;
  UserCreationFlowState get userCreationFlowState => _userCreationFlowState;

  @protected
  set userCreationFlowState(UserCreationFlowState value) {
    _userCreationFlowState = value;
    notifyListeners();
  }

  Future<void> nameSubmission(String name) async {
    userCreationFlowState = UserCreationFlowState.loading;

    try {
      await Future.delayed(const Duration(milliseconds: 0), () {
        userCreationFlowState = UserCreationFlowState.presenting;
        userCreationFlowController.nextPage();
      });

      /// TODO: nameSubmission useCase Domain

    } catch (e) {
      userCreationFlowState = UserCreationFlowState.error;
    } finally {
      userCreationFlowState = UserCreationFlowState.presenting;
    }
  }

  Future<void> locationSubmission(String name) async {
    userCreationFlowState = UserCreationFlowState.loading;

    try {
      await Future.delayed(const Duration(milliseconds: 0), () {
        userCreationFlowState = UserCreationFlowState.presenting;
        userCreationFlowController.nextPage();
      });

      /// TODO: nameSubmission useCase Domain

    } catch (e) {
      userCreationFlowState = UserCreationFlowState.error;
    } finally {
      userCreationFlowState = UserCreationFlowState.presenting;
    }
  }

  Future<void> passionSubmission(String name) async {
    userCreationFlowState = UserCreationFlowState.loading;

    try {
      await Future.delayed(const Duration(milliseconds: 0), () {
        userCreationFlowState = UserCreationFlowState.presenting;
        userCreationFlowController.nextPage();
      });

      /// TODO: nameSubmission useCase Domain

    } catch (e) {
      userCreationFlowState = UserCreationFlowState.error;
    } finally {
      userCreationFlowState = UserCreationFlowState.presenting;
    }
  }
}

final userCreationActionControllerProvider =
    ChangeNotifierProvider<UserCreationActionController>((ref) {
  final userCreationFlowController =
      ref.read(userCreationFlowControllerProvider);

  return UserCreationActionController(userCreationFlowController);
});

enum UserCreationFlowState {
  presenting,
  loading,
  error,
}
