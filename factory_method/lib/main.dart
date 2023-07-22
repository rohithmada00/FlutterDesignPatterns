import 'package:factory_method/models/android_dialog.dart';
import 'package:factory_method/models/ios_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const FactoryMethodExample());
}

class FactoryMethodExample extends StatelessWidget {
  const FactoryMethodExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton(
          onPressed: () {
            AndroidDialog(
              title: 'Android Alert Dialog',
              description: 'This is the material-style alert dialog!',
            ).show(context);
          },
          child: const Text(
            'Android dialog',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        CupertinoButton(
          onPressed: () {
            IosDialog(
              title: 'iOS Alert Dialog',
              description: 'This is the cupertino-style alert dialog!',
            ).show(context);
          },
          child: const Text(
            'iOS dialog',
          ),
        ),
      ],
    );
  }
}
