import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:green_food/Controller/AuthController.dart';
import 'package:green_food/UI/views/base_widget.dart';
import 'package:green_food/utils/AdaptiveTextSize.dart';
import 'package:green_food/utils/Color.dart';
import 'package:green_food/utils/Const.dart';
import 'package:green_food/utils/Style.dart';

class Otp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AuthController(),
      initState: (_) {},
      builder: (controller) {
        return BaseWidget(
          builder: (context, sizingInformation) {
            return SafeArea(
              child: Scaffold(
                  backgroundColor: white,
                  body: Container(
                    padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            decoration: BoxDecoration(color: backgroundSecondary.withOpacity(.05)),
                            width: double.infinity,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: rootContainerSpacing,
                                ),
                                Text(
                                  'Log in to add product your card',
                                  style: sectionTitle().copyWith(
                                    fontWeight: FontWeight.w800,
                                    color:black,
                                    fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                                  )
                                ),
                                SizedBox(
                                  height: rootContainerSpacing,
                                ),
                                Text(
                                  'Phone Number',
                                    style: sectionTitleSmall().copyWith(
                                      color: black,
                                        fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, 14)
                                    )
                                ),
                                SizedBox(
                                  height: sectionSpacing,
                                ),
                                Container(
                                  height: 50,
                                  width: double.infinity,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: rootContainerSpacing,
                                  ),
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '+880',
                                          style: sectionTitleSmall().copyWith(
                                              color:black,
                                              fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                                          )
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Icon(
                                        AntDesign.down,
                                        color: Colors.green,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Expanded(
                                        child: customPhoneField(),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                                Text(
                                  'Use Email Id',
                                    style: sectionTitleSmall().copyWith(
                                        color:black,
                                        fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                                    )
                                ),
                                SizedBox(
                                  height: rootContainerSpacing,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    color: backgroundSecondary,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Send',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: rootContainerSpacing,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),),
            );
          },
        );
      },
    );
  }
  TextField customPhoneField() {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 3),
        border: InputBorder.none,
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
      keyboardType: TextInputType.phone,
    );
  }
}
