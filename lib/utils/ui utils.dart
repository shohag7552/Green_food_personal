import 'package:flutter/material.dart';
import 'package:green_food/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  double devicewidth = 0;

  if (orientation == Orientation.landscape) {
    devicewidth = mediaQuery.size.height;
  } else {
    devicewidth = mediaQuery.size.width;
  }

  if (devicewidth > 950) {
    return DeviceScreenType.Desktop;
  }
  if (devicewidth > 600) {
    return DeviceScreenType.Tablet;
  }
  return DeviceScreenType.Mobile;
}
