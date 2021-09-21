import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:green_food/UI/views/sizing_information.dart';
import 'package:green_food/utils/AdaptiveTextSize.dart';
import 'package:green_food/utils/AppBar.dart';
import 'package:green_food/utils/Color.dart';
import 'package:green_food/utils/Const.dart';
import 'package:green_food/utils/Style.dart';



import 'Controller/DashBoardController.dart';
import 'UI/Search/Search.dart';
import 'UI/views/base_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.put(DashBoardController());
    return GetBuilder<DashBoardController>(
      init: DashBoardController(),
      initState: (_) {},
      builder: (controller) {
        return BaseWidget(
          builder: (context, sizingInformation) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: backgroundTertiary,
                appBar: dashboardAppbar(
                  title:
                      ' 147 C, Road 7, Block C, Banasree', /*context: context*/
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [


                      Container(
                        height: 150,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Header(
                              subHeader: 'Select your category and get delivery on time!',
                              header: 'Good Evening, Onim', /*context:context*/
                              sizingInformation: sizingInformation,
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 52,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(3),
                                        color: backgroundSecondary,
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Text(
                                            'Restaurants ',
                                            style: TextStyle(
                                                color: white,
                                                fontSize: AdaptiveTextSize()
                                                    .getadaptiveTextSize(
                                                        context, 12)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: sectionSpacing,),
                                  Expanded(
                                    child: Container(
                                      height: 52,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(3),
                                        color: white,
                                        border: Border.all(
                                          color: backgroundSecondary,
                                          width: 1,
                                        ),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          child: Text(
                                            'Green Kitchen',
                                            style: TextStyle(
                                                color: backgroundSecondary,
                                                fontSize: AdaptiveTextSize()
                                                    .getadaptiveTextSize(
                                                        context, 12)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: sectionSpacing,),
                                  Expanded(
                                    child: Container(
                                      height: 52,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(3),
                                        color: white,
                                        border: Border.all(
                                          color: backgroundSecondary,
                                          width: 1,
                                        ),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          child: Text(
                                            'Medicine',
                                            style: TextStyle(
                                                color: backgroundSecondary,
                                                fontSize: AdaptiveTextSize()
                                                    .getadaptiveTextSize(
                                                        context, 12)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: sectionSpacing * 2,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 7,
                              child: Container(
                                padding: EdgeInsets.only(left: 16),
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextFormField(
                                  onTap: () {
                                    Get.to(Search());
                                  },
                                  decoration: InputDecoration(
                                    labelText:
                                        'Search for restaurant, Green Kitchen, Medic',
                                    // variable
                                    border: InputBorder.none,
                                    labelStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: backgroundSecondary,
                                    ), //variable
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 18),
                                child: Icon(
                                  Icons.tune_rounded,
                                  size: 22,
                                  color: backgroundSecondary,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: sectionSpacing * 2),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                        child: Header(
                            header: "Gift of the friday",
                            subHeader:
                                "Select your category and get delivery on time",sizingInformation: sizingInformation,),
                      ),
                      SizedBox(
                        height: sectionSpacing * 2,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing-5),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: (sizingInformation.localwidgetsize.height /
                                      rootContainerSpacing) *
                                  6, // making height 240
                              viewportFraction: 1,
                              autoPlayInterval: Duration(seconds: 2),
                              autoPlay: true,
                            ),
                            items: [
                              "assets/images/image3.png",
                              "assets/images/image3.png",
                              "assets/images/image3.png"
                            ].map(
                              (i) {
                                print(sizingInformation.localwidgetsize.width);
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration:
                                          BoxDecoration(color: Colors.amber),
                                      child: Image.asset(
                                        '$i',
                                        fit: BoxFit.fill,
                                      ),
                                    );
                                  },
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: rootContainerSpacing * 2,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                        child: Header(
                            header: "Restaurant of the month",
                            subHeader:
                                "Place the order hurry and enjoy the meal!!!",sizingInformation: sizingInformation),
                      ),
                      SizedBox(
                        height: rootContainerSpacing*2,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: rootContainerSpacing-5),
                        child: Container(
                          height: sizingInformation.localwidgetsize.height /
                                  19 *
                                  3 +
                              16,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            // physics: ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 11),
                                child: Container(
                                  child: Image.asset("assets/images/Add.png"),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: rootContainerSpacing * 2,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                        child: Header(
                            header: 'Order Again',
                            subHeader:
                                'Place the order hurry and enjoy the meal!!!',sizingInformation: sizingInformation),
                      ),
                      SizedBox(
                        height: rootContainerSpacing * 2,
                      ),
                      Horizontal(
                        image: "assets/images/image1.png",
                        items: 'Sultan’s Dine Banasree',
                        rating: '4.8',
                        count: "(2.3K)",
                        description: "Beef, Mutton, Biriyani, Desserts",
                        offer: "TK 15 Delivery fee",
                        sizingInformation: sizingInformation,
                      ),
                      SizedBox(
                        height: rootContainerSpacing * 2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height:  rootContainerSpacing * 2,
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                              child: Header(
                                header: "Delicious bite 24/7",
                                subHeader:
                                    "Make your dish delicious, place the order hurry!!!",sizingInformation: sizingInformation
                              ),
                            ),
                            SizedBox(
                              height: rootContainerSpacing * 2,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                              child: Container(
                                child: Vertical(
                                  image: "assets/images/delicious.png",
                                  shop: 'Sultan’s Dine Banasree',
                                  rating: '4.8',
                                  count: "(2.3K)",
                                  description: "Beef, Mutton, Biriyani, Desserts",
                                  offer: "TK 15 Delivery fee",
                                    sizingInformation: sizingInformation
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height:  rootContainerSpacing * 2,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                        child: Header(
                            header: 'Current Offers',
                            subHeader:
                                'Place the order hurry and enjoy the meal!!!',sizingInformation: sizingInformation),
                      ),
                      SizedBox(
                        height:  rootContainerSpacing * 2,
                      ),
                      Horizontal(
                        image: "assets/images/current.png",
                        description: 'Sultan’s Dine Banasree',
                        rating: '4.8',
                        count: '(2.3K)',
                        items: 'Beef, Mutton, Biriyani, Desserts',
                        offer: 'TK 15 Delivery fee',
                      ),
                      SizedBox(height:  rootContainerSpacing * 2,),
                      Container(
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height:  rootContainerSpacing * 2,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                              child: Header(
                                header: "Nearby Restaurants",
                                subHeader:
                                    "Make your dish delicious, place the order hurry!!!",sizingInformation: sizingInformation
                              ),
                            ),
                            SizedBox(
                              height:  rootContainerSpacing * 2,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 19,
                                  right: 10,
                                  top: 0,
                                  bottom: 2),
                              child: Vertical(
                                image: "assets/images/nearby.png",
                                shop: 'Sultan’s Dine Banasree',
                                rating: '4.8',
                                count: "(2.3K)",
                                description: "Beef, Mutton, Biriyani, Desserts",
                                offer: "TK 15 Delivery fee",
                                sizingInformation: sizingInformation,
                              ),
                            ),
                          ],
                        ),
                      ),
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

  Widget Header({String header, String subHeader,SizingInformation sizingInformation}) {
    return Container(
      width: double.infinity,
      //padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 3,
                height: 40,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    header,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: AdaptiveTextSize()
                            .getadaptiveTextSize(Get.context, 18),
                        fontWeight: FontWeight.w900),overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  SizedBox(
                    width: sizingInformation.localwidgetsize.width/1.4,
                    child: Text(
                      subHeader,
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(Get.context, 12),
                          fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,maxLines: 1,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget Horizontal({
    String image,
    String items,
    String rating,
    String count,
    String description,
    String offer,
    SizingInformation sizingInformation,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing - 5),
      height:   245,
      color: backgroundTertiary,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Container(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset(
                        image,
                        height: 160,
                        width: 272,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: Row(
                                children: [
                                  Text(
                                    items,
                                    style: sectionTitle().copyWith(
                                      fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionTitleFontSize-6)
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Foundation.star,
                                      color: backgroundSecondary,
                                      size: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, sectionSubTitleFontSize),),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    rating,
                                    style: sectionSubTitle().copyWith(
                                        fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                ],
                              )),
                            ],
                          ),
                          Text(
                            description,
                            style: sectionSubTitle().copyWith(
                                fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            offer,
                            style: sectionSubTitle().copyWith(
                                fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget Vertical(
      {String image,
      String shop,
      String rating,
      String count,
      String description,
      String offer,
      SizingInformation sizingInformation,
      }) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: rootContainerSpacing ),
          child: Container(
            height: (sizingInformation.localwidgetsize.height/rootContainerSpacing)*3.94,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    image,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            shop,
                            style: sectionTitle().copyWith(
                               fontWeight: FontWeight.w400,
                                fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionTitleFontSize-6)
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            FontAwesome.star,
                            color: backgroundSecondary,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            rating,
                            style: sectionSubTitle().copyWith(
                                fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '(2.3K)',
                            style: sectionSubTitle().copyWith(
                                fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red.withOpacity(.15),
                      ),
                      child: Center(
                        child: Text(
                          '30 Min',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: backgroundSecondary),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  description,
                  style: sectionSubTitle().copyWith(
                      fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  offer,
                  style: sectionSubTitle().copyWith(
                      color: black,
                      fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, sectionSubTitleFontSize)
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
