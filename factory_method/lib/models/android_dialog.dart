import 'package:factory_method/models/custom_dialog.dart';
import 'package:flutter/material.dart';

class AndroidDialog extends CustomDialog {
  AndroidDialog({
    required super.title,
    required super.description,
  });

  @override
  Widget createDialog(BuildContext context) {
    return AlertDialog(
      title: Text(super.title),
      content: Text(super.description),
      actions: <Widget>[
        TextButton(
          onPressed: Navigator.of(context).pop,
          child: const Text('Close Android Dialog'),
        ),
      ],
    );
  }
}
