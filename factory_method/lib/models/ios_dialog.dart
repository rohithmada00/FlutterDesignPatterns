import 'package:factory_method/models/custom_dialog.dart';
import 'package:flutter/cupertino.dart';

class IosDialog extends CustomDialog {
  IosDialog({
    required super.title,
    required super.description,
  });

  @override
  Widget createDialog(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(super.title),
      content: Text(super.description),
      actions: <Widget>[
        CupertinoButton(
          onPressed: Navigator.of(context).pop,
          child: const Text('Close Android Dialog'),
        ),
      ],
    );
  }
}
