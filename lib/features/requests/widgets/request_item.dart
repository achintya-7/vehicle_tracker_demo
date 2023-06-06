import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RequestItem extends StatelessWidget {
  const RequestItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: () => Fluttertoast.showToast(msg: "Coming Soon"),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(width: 8.0),
                  const Text("Fecal Sludge Management", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Icon(Icons.garage, color: Colors.orange[900], size: 48),
                ],
              ),
              const Divider(height: 1),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("120", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("Total", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(width: 24.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("24", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("Nearing SLA", style: TextStyle(fontSize: 16)),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    style: TextStyle(color: Colors.orange[900], fontSize: 16),
                    children: [
                      TextSpan(
                        text: "History \n",
                        recognizer: TapGestureRecognizer()..onTap = () => Fluttertoast.showToast(msg: "History Coming Soon"),
                      ),
                      TextSpan(
                        text: "New Complaint \n",
                        recognizer: TapGestureRecognizer()..onTap = () => Fluttertoast.showToast(msg: "Complaint Coming Soon"),
                      ),
                      TextSpan(
                        text: "Live Tracking",
                        recognizer: TapGestureRecognizer()..onTap = () => Fluttertoast.showToast(msg: "Tracking Coming Soon"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
