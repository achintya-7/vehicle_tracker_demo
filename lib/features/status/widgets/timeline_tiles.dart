// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class StartTimelineTile extends StatelessWidget {
  const StartTimelineTile({super.key});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      isFirst: true,
      indicatorStyle: const IndicatorStyle(
        width: 30,
        color: Colors.deepOrange,
      ),
      afterLineStyle: LineStyle(color: Colors.orange.withOpacity(0.7)),
      endChild: const Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("DSO in progress", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text("Expection to complete by 17/06/2023"),
            Text("Employee Editor"),
            Text("98342402144"),
            Text("GPS Location", style: TextStyle(color: Colors.deepOrange)),
          ],
        ),
      ),
    );
  }
}

class CustomTimelineTile extends StatelessWidget {
  const CustomTimelineTile({
    Key? key,
    required this.isNext,
    required this.title,
    required this.date,
    required this.editor, this.isLast,
  }) : super(key: key);

  final bool isNext;
  final String title;
  final String date;
  final String editor;
  final bool? isLast;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      indicatorStyle: const IndicatorStyle(
        width: 30,
      ),
      isLast: isLast ?? false,
      beforeLineStyle: isNext ? LineStyle(color: Colors.orange.withOpacity(0.7)) : const LineStyle(),
      afterLineStyle: const LineStyle(),
      endChild: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(date),
            Text(editor),
          ],
        ),
      ),
    );
  }
}
