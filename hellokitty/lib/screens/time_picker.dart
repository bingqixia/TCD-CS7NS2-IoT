import 'package:flutter/material.dart';

class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker({Key? key}) : super(key: key);

  TimePickerState createState() => TimePickerState();
}

class TimePickerState extends State<CustomTimePicker> {
  String? selectedTime;

  Future<void> displayTimeDialog() async {
    final TimeOfDay? time =
        // await showTimePicker(context: context, initialTime: TimeOfDay.now());
        await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            builder: (context, child) {
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                      // Using 12-Hour format
                      alwaysUse24HourFormat: false),
                  // If you want 24-Hour format, just change alwaysUse24HourFormat to true
                  child: child!);
            });
    if (time != null) {
      setState(() {
        selectedTime = time.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            selectedTime != null
                ? '$selectedTime'
                : 'Click Below Button To Select Time...',
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.all(8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: const EdgeInsets.all(7),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Show Time Picker'),
              onPressed: displayTimeDialog,
            ),
          ),
        ],
      ),
    )));
  }

  String? get _selectedTime => selectedTime;
}
