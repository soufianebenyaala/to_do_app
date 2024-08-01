// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/dashboard/models/task_model.dart';
import 'package:todo_app/dashboard/widgets/task_list_tile_widget.dart';
import 'package:todo_app/utils/assets.dart';

class DailyTaskCardWidget extends StatefulWidget {
  const DailyTaskCardWidget({super.key});

  @override
  State<DailyTaskCardWidget> createState() => _DailyTaskCardWidgetState();
}

class _DailyTaskCardWidgetState extends State<DailyTaskCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Daily Task',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SvgPicture.asset(
                  Assets.plusIcon,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.03,
              ),
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: tasks.length,
                itemBuilder: (context, index) => TaskListTileWidget(
                  label: tasks[index].label,
                  value: tasks[index].value,
                  onChanged: (value) {
                    setState(() {
                      tasks[index].value = value ?? false;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
