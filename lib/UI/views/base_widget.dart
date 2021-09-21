import 'package:flutter/material.dart';
import 'package:green_food/UI/views/sizing_information.dart';
import 'package:green_food/utils/ui%20utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  const BaseWidget({this.builder});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        var sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          devicescreentype: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localwidgetsize:
              Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
        );
        return builder(context, sizingInformation);
      },
    );
  }
}
