import 'package:flutter/material.dart';
import '../components/custom_appbar.dart';
import '../components/path_config.dart';

class ManualFeeding extends StatelessWidget {
  const ManualFeeding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Manual Feeding",
        iconPath: IconPath.customOptions[2][1],
        backgroudColor: Colors.black,
        height: 40,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
