import 'package:flutter/material.dart';
import 'package:vehicle_tracker_demo/features/status/widgets/timeline_tiles.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Work Status"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Possible Service Date : ", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("17/06/2023"),
                ],
              ),
              Text("Application Timeline", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36)),
              StartTimelineTile(),
              CustomTimelineTile(isNext: true, title: "Application Created", date: "15/06/2023", editor: "Employee Editor"),
              CustomTimelineTile(isNext: false, title: "Pending for DSO Assignment", date: "15/06/2023", editor: "FSM Collector"),
              CustomTimelineTile(isNext: false, title: "Pending for Payment", date: "15/06/2023", editor: "Employee Editor"),
              CustomTimelineTile(
                  isNext: false, title: "Application Creation Done", date: "15/06/2023", editor: "FSM Collector", isLast: true),
            ],
          ),
        ),
      ),
    );
  }
}
