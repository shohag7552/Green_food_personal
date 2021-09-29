import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:green_food/Controller/ShopProfileController.dart';
import 'package:green_food/UI/views/base_widget.dart';
import 'package:green_food/UI/views/sizing_information.dart';
import 'package:green_food/utils/AdaptiveTextSize.dart';
import 'package:green_food/utils/Color.dart';
import 'package:green_food/utils/Const.dart';
import 'package:green_food/utils/Style.dart';

class ShopProfile extends StatelessWidget {
  const ShopProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shopProfileController = Get.put(ShopProfileController());
    return GetBuilder<ShopProfileController>(
        init: ShopProfileController(),
        initState: (_) {},
        builder: (controller) {
          return BaseWidget(
            builder: (context, sizingInformation) {
              print(
                  "full height : ${sizingInformation.localwidgetsize.height}");
              print(
                sizingInformation.localwidgetsize.height /
                    rootContainerSpacing *
                    1.33,
              );

              return SafeArea(
                child: Scaffold(
                  backgroundColor: white,
                  body: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        appBarSide(sizingInformation),
                        rattingSide(sizingInformation),
                        complementSide(),
                        feedbackSide(),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          margin: EdgeInsets.only(
                            left: 16,
                            right: 16,
                            bottom: buttonHeight,
                            top: rootContainerSpacing * 2,
                          ),
                          decoration: BoxDecoration(
                            color: backgroundSecondary,
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                "Submit",
                                style: drawerListText().copyWith(
                                  color: white,
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(Get.context, 14),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }

  Container feedbackSide() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Share your feedback",
            style: sectionTitleSmall().copyWith(
              fontWeight: FontWeight.w800,
              color: black,
              fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, 16),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            maxLines: 4,
            scrollPadding: EdgeInsets.all(5.0),
            decoration: InputDecoration(
              border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.teal, width: 0.1),
              ),

              // border: InputBorder.none,
              hintText: 'Tell us what you liked...',
              hintStyle: sectionTitleSmall().copyWith(
                fontWeight: FontWeight.w400,
                color: black,
                fontSize:
                    AdaptiveTextSize().getadaptiveTextSize(Get.context, 12),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget complementSide() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Give a complement",
              style: sectionTitleSmall().copyWith(
                fontWeight: FontWeight.w800,
                color: black,
                fontSize:
                    AdaptiveTextSize().getadaptiveTextSize(Get.context, 16),
              ),
            ),
          ),
          Wrap(
            children: [
              complements(text: "Delivery Time"),
              complements(text: "Social Destancing"),
              complements(text: "Professional Delivery Hero"),
              complements(text: "Expert Navigations"),
            ],
          )
        ],
      ),
    );
  }

  Widget complements({String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Container(
            height: 65,
            width: 65,
            child: Image.asset("assets/images/complement.png"),
          ),
          Container(
            width: 65,
            child: Text(
              text,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: sectionSubTitle().copyWith(
                color: black,
                fontSize:
                    AdaptiveTextSize().getadaptiveTextSize(Get.context, 12),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget rattingSide(SizingInformation sizingInformation) {
    return Container(
      padding: EdgeInsets.only(
        top: sizingInformation.localwidgetsize.height /
            rootContainerSpacing *
            1.33,
        //left: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Text(
                "Rate your delivery by ",
                style: sectionTitleSmall().copyWith(
                  color: black,
                  fontSize:
                      AdaptiveTextSize().getadaptiveTextSize(Get.context, 16),
                ),
              ),
              Text(
                "Sultain’s Dine",
                style: sectionTitleSmall().copyWith(
                  fontWeight: FontWeight.w900,
                  color: black,
                  fontSize:
                      AdaptiveTextSize().getadaptiveTextSize(Get.context, 16),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 40,
              itemPadding:
                  EdgeInsets.symmetric(horizontal: 4.0, vertical: 15.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget appBarSide(SizingInformation sizingInformation) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: (sizingInformation.localwidgetsize.height /
                  rootContainerSpacing) *
              2.7,
          decoration: BoxDecoration(
            color: black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      size: 21,
                      color: white,
                    ),
                  ),
                  Text(
                    "Sultain’s Dine Banasree",
                    style: drawerListText().copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: AdaptiveTextSize()
                          .getadaptiveTextSize(Get.context, 18),
                      color: white,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: backgroundSecondary.withOpacity(0.30),
                    ),
                    child: Icon(
                      Icons.share_outlined,
                      color: white,
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    width: rootContainerSpacing,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: backgroundSecondary.withOpacity(0.30),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: white,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -(sizingInformation.localwidgetsize.height /
                  rootContainerSpacing *
                  1.55) /
              2,
          left: rootContainerSpacing + 1,
          right: rootContainerSpacing + 1,
          child: Container(
            height: sizingInformation.localwidgetsize.height /
                rootContainerSpacing *
                1.55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Thanks for ordering!",
                          style: drawerButtonText().copyWith(
                            fontWeight: FontWeight.w900,
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(Get.context, 16),
                          ),
                        ),
                        Text(
                          "Order delivered just as you wished.",
                          style: drawerButtonText().copyWith(
                            color: black,
                            fontWeight: FontWeight.w400,
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(Get.context, 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Image.asset("assets/images/delevary.png"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
