import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:green_food/Controller/AuthController.dart';
import 'package:green_food/UI/views/base_widget.dart';
import 'package:green_food/utils/AdaptiveTextSize.dart';
import 'package:green_food/utils/Color.dart';
import 'package:green_food/utils/Const.dart';
import 'package:green_food/utils/Style.dart';

import 'otp.dart';

class Login extends StatelessWidget {
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
                body: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      SizedBox(
                        height: sectionSpacing * 7,
                      ),
                      Image(
                        image: AssetImage("assets/images/logo.png"),
                        height: sizingInformation.localwidgetsize.height /
                            rootContainerSpacing *
                            1.89,
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: rootContainerSpacing * 8,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                        child: Container(
                            decoration: BoxDecoration(
                                color: backgroundSecondary.withOpacity(0.05),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                )),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: rootContainerSpacing),
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: rootContainerSpacing * 2,
                                    ),
                                    Center(
                                      child: Text(
                                        'Login to add food on your cart',
                                        style: sectionSubTitle().copyWith(
                                          color: black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: rootContainerSpacing * 2,
                                    ),
                                    Form(
                                      child: Column(
                                        children: [
                                          customTextField(
                                            labeltext: 'user@qcoom.com',
                                            prefixdata: Icon(
                                              AntDesign.mail,
                                            ),
                                            value : 0,
                                          ),
                                          SizedBox(
                                            height: sectionSpacing,
                                          ),
                                          customTextField(
                                            labeltext: 'password',
                                            prefixdata: Icon(
                                              AntDesign.mail,
                                            ),
                                            value : 1,
                                          ),
                                          SizedBox(
                                            height: rootContainerSpacing*3,
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                InkWell(
                                                onTap: () {
                                                  Get.to(Otp());
                                                },
                                                  child: Text(
                                                    'Login with OTP',
                                                    style: sectionSubTitle().copyWith(
                                                      color: blue,
                                                      fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                                                    )

                                                  ),
                                                ),
                                                Text(
                                                  'Forgot Password',
                                                    style: sectionSubTitle().copyWith(
                                                        color: anotherWay,
                                                        fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                                                    )
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: rootContainerSpacing * 2,
                                    ),
                                    Container(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(vertical: rootContainerSpacing),
                                        decoration: BoxDecoration(
                                          color: backgroundSecondary,
                                          borderRadius: BorderRadius.circular(borderRadius),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Login',
                                           style: sectionSubTitle().copyWith(
                                            color: white,
                                          ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: rootContainerSpacing * 2,
                                    ),
                                  ],
                                ),
                              ),
                            ),),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget customTextField({
    @required String labeltext, Icon prefixdata, int value })
  {
    return Material(
      color: white,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labeltext,
          prefixIcon: prefixdata,
         suffixIcon: value == 1 ?IconButton(icon: Icon(Feather.eye),): SizedBox(),
          border: OutlineInputBorder(),
        ),
        textInputAction: TextInputAction.done,

      ),
    );
  }
}
