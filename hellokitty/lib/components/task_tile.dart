import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final dynamic checkboxCallback;
  final dynamic longPressCallback;

  // dynamic checkboxCallback(bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState!;
  //   });
  // }

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Row(
        children: [
          Icon(Icons.access_time),
          SizedBox(
            width: 20,
          ),
          Text(
            taskTitle,
            style: TextStyle(
              fontSize: 18.0,
              decoration: isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
        ],
      ),
      // leading: Checkbox(
      //   value: isChecked,
      //   onChanged: checkboxCallback,
      // ),
      trailing: MaterialButton(
          onPressed: longPressCallback,
          child: const Icon(
            Icons.delete_forever_outlined,
            color: Colors.grey,
          )),
    );
  }
}
