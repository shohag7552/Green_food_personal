import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller/DashBoardController.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.put(DashBoardController());
    return GetBuilder<DashBoardController>(
      init: DashBoardController(),
      initState: (_) {},
      builder: (controller) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Scaffold(
              backgroundColor: Colors.green,
            );
          },
        );
      },
    );
  }
}
