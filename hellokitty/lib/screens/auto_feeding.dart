import 'package:flutter/material.dart';
import '../components/custom_appbar.dart';
import '../components/path_config.dart';
import 'package:provider/provider.dart';
import '../model/task_data.dart';
import '../components/task_list.dart';
import 'package:simple_time_range_picker/simple_time_range_picker.dart';

class AutoFeeding extends StatelessWidget {
  const AutoFeeding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroudColor: Colors.black,
        title: "Auto Feeding",
        height: 40,
        iconPath: IconPath.customOptions[1][1],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => TimeRangePicker.show(
          context: context,
          unSelectedEmpty: true,
          startTime: TimeOfDay.now(),
          endTime: TimeOfDay.now(),
          onSubmitted: (TimeRangeValue value) {
            if (value.startTime != null && value.endTime != null) {
              Provider.of<TaskData>(context, listen: false).addTask(
                  value.startTime!.format(context),
                  value.endTime!.format(context));
            }
          },
        ),
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 0.0, left: 30.0, right: 20.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} schedules',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TasksList(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
