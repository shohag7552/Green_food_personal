import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_food/Controller/SearchController.dart';
import 'package:green_food/UI/views/base_widget.dart';
import 'package:green_food/utils/AppBar.dart';
import 'package:green_food/utils/Color.dart';
import 'package:green_food/utils/Const.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchController = Get.put(SearchController());
    return GetBuilder<SearchController>(
      init: SearchController(),
      initState: (_) {},
      builder: (controller) {
        return BaseWidget(
          builder: (context, sizingInformation) {
            return Scaffold(
              backgroundColor: backgroundTertiary,
              appBar: searchAppbar(
                  title: 'Search for restaurant, Green Kitchen, Medicine',
                  context: context),
            );
          },
        );
      },
    );
  }
}
