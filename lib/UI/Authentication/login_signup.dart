import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_food/Controller/AuthController.dart';
import 'package:green_food/UI/views/base_widget.dart';
import 'package:green_food/utils/AdaptiveTextSize.dart';
import 'package:green_food/utils/Color.dart';
import 'package:green_food/utils/Const.dart';
import 'package:green_food/utils/Style.dart';

import 'Login.dart';


class LoginSignupPage extends StatelessWidget {
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
                backgroundColor: backgroundPrimary,
                body: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/abc.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: betweenSpacing),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: rootContainerSpacing * 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: sectionSpacing,
                              ),
                              Text('Greetings!',
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FontStyle.italic)),
                              SizedBox(
                                height: sectionSpacing * 2,
                              ),
                              Text('Do you want to Login/Signup now?',
                                  style: sectionTitleSmall()),
                              SizedBox(
                                height: sectionSpacing * 2,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Get.to(Login());
                                        },
                                        child: Container(
                                          height: sizingInformation
                                                  .localwidgetsize.height /
                                              rootContainerSpacing,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: backgroundSecondary,
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Login',
                                              style: sectionTitleSmall().copyWith(
                                                fontSize: AdaptiveTextSize()
                                                    .getadaptiveTextSize(
                                                        Get.context, 14),
                                                color: white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: sectionSpacing,
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: (){},
                                        child: Container(
                                          height: sizingInformation
                                                  .localwidgetsize.height /
                                              rootContainerSpacing,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: black,
                                          ),
                                          // padding: EdgeInsets.symmetric(
                                          //     vertical: 17, horizontal: 60),
                                          child: Center(
                                            child: Center(
                                              child: Text(
                                                'Signup',
                                                style: sectionTitleSmall()
                                                    .copyWith(
                                                  fontSize: AdaptiveTextSize()
                                                      .getadaptiveTextSize(
                                                          Get.context, 14),
                                                  color: white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: sectionSpacing * 2,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  'Skip for now',
                                  style: sectionTitleSmall().copyWith(
                                      color: anotherWay,
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(
                                              Get.context, 12)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
