import 'package:get/get.dart';
import 'package:vehicle_tracker_demo/features/home/bindings/home_bindings.dart';
import 'package:vehicle_tracker_demo/features/map/pages/map_page.dart';

import 'features/home/pages/home_page.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(
    name: "/",
    page: () => HomePage(),
    binding: HomeBindings(),
  ),
  GetPage(
    name: "/map",
    page: () => MapPage(),
  )
];
