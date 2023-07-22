import 'package:flutter/material.dart';

abstract class CustomDialog {
  final String title;
  final String description;

  CustomDialog({
    required this.title,
    required this.description,
  });

  Widget createDialog(BuildContext context);

  void show(
    BuildContext context, {
    bool isDismissable = false,
  }) =>
      showDialog(
        context: context,
        builder: createDialog,
        barrierDismissible: isDismissable,
      );
}
