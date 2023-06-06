import 'package:flutter/material.dart';
import 'package:vehicle_tracker_demo/features/requests/widgets/request_item.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Request Page"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => const RequestItem(),
        itemCount: 4,
      ),
    );
  }
}
