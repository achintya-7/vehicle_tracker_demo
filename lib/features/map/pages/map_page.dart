import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:vehicle_tracker_demo/constants.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FlutterMap(
          options: MapOptions(
            center: newDelhi,
            zoom: 13.0,
          ),
          children: [
            TileLayer(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: const ['a', 'b', 'c'],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: newDelhi,
                  builder: (context) => const Icon(
                    Icons.place,
                    size: 36,
                  ),
                ),
              ],
            )
            // PolylineLayer(
            //   polylineCulling: false,
            //   polylines: [
            //     Polyline(
            //       points: routePoints,
            //       color: Colors.red,
            //       strokeWidth: 4.0,
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
