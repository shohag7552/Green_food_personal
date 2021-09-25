import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_food/Controller/RestaurantController.dart';
import 'package:green_food/UI/Restaurant/TabPages/all_items.dart';
import 'package:green_food/UI/Restaurant/TabPages/beef_biriyani.dart';
import 'package:green_food/UI/Restaurant/TabPages/chicken.dart';
import 'package:green_food/UI/Restaurant/TabPages/drink.dart';
import 'package:green_food/UI/views/base_widget.dart';
import 'package:green_food/UI/views/sizing_information.dart';
import 'package:green_food/utils/AdaptiveTextSize.dart';
import 'package:green_food/utils/Color.dart';
import 'package:green_food/utils/Const.dart';
import 'package:green_food/utils/Style.dart';

class RestaurantPage extends StatefulWidget {
  // const RestaurantPage({Key key}) : super(key: key);

  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final restaurantController = Get.put(RestaurantPage());
    return GetBuilder<RestaurantController>(
      init: RestaurantController(),
      initState: (_) {},
      builder: (controller) {
        return BaseWidget(
          builder: (context, sizingInformation) {
            return Scaffold(
              backgroundColor: backgroundTertiary,
              body: Column(
                children: [
                  customAppBar(context, sizingInformation),
                  SizedBox(
                    height: sectionSpacing + sectionSpacing,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: backgroundSecondary,
                    ),
                    child: Center(
                      child: Text(
                        "Enjoy 15% Discount on full menu in 3,500 Taka order!",
                        style: appSubtitleText().copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: AdaptiveTextSize().getadaptiveTextSize(
                              Get.context, sectionSpacing + 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sectionSpacing + sectionSpacing,
                  ),
                  Container(
                    height: 40,
                    color: Colors.white,
                    child: TabBar(
                      controller: _tabController,
                      labelColor: backgroundSecondary,
                      unselectedLabelColor: black,
                      indicatorColor: backgroundSecondary,
                      unselectedLabelStyle: appSubtitleText().copyWith(
                        fontSize: AdaptiveTextSize()
                            .getadaptiveTextSize(Get.context, 14),
                      ),
                      tabs: [
                        Tab(
                          text: "All Items",
                        ),
                        Tab(
                          text: "Beep Biriyani",
                        ),
                        Tab(
                          text: "Chicken",
                        ),
                        Tab(
                          text: "Drink",
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: backgroundTertiary,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          AllItems(),
                          BeefBiriyani(),
                          Chicken(),
                          Drink(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget customAppBar(
      BuildContext context, SizingInformation sizingInformation) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 21,
                  color: white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Sultain’s Dine Banasree",
                  style: drawerListText().copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize:
                        AdaptiveTextSize().getadaptiveTextSize(Get.context, 18),
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
                    size: 21,
                  ),
                ),
                SizedBox(
                  width: 15,
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
                    size: 21,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: backgroundSecondary,
                      size: 14,
                    ),
                    Text(
                      " 4.8 (2.3k)",
                      style: appSubtitleText().copyWith(
                        fontSize: AdaptiveTextSize()
                            .getadaptiveTextSize(Get.context, height + 4),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                    color: backgroundSecondary.withOpacity(0.30),
                  ),
                  child: Text(
                    "Delivery 30 Min",
                    style: appSubtitleText().copyWith(
                      fontSize: AdaptiveTextSize()
                          .getadaptiveTextSize(Get.context, height),
                    ),
                  ),
                ),
                Text(
                  "Location",
                  style: appSubtitleText().copyWith(
                    fontSize: AdaptiveTextSize()
                        .getadaptiveTextSize(Get.context, height + 4),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
