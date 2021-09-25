import 'package:flutter/material.dart';
import 'package:green_food/utils/AdaptiveTextSize.dart';
import 'package:green_food/utils/Color.dart';
import 'package:green_food/utils/Style.dart';

class BeefBiriyani extends StatelessWidget {
  final BuildContext context;
  const BeefBiriyani({Key key, this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return listItems(context);
        },
      ),
    );
  }

  Container listItems(BuildContext context) {
    return Container(
      color: white,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Beef Biriyani 1:1",
                  style: drawerListText().copyWith(
                    fontSize:
                        AdaptiveTextSize().getadaptiveTextSize(context, 14),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Bashmoti Premium rice with shahi massala beef make this platter supper delicious.",
                  style: drawerListText().copyWith(
                    color: black.withOpacity(0.50),
                    fontSize:
                        AdaptiveTextSize().getadaptiveTextSize(context, 10),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "৳ 350",
                      style: drawerListText().copyWith(
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 14),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "৳ 400",
                      style: drawerListText().copyWith(
                        decoration: TextDecoration.lineThrough,
                        color: black.withOpacity(0.5),
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 14),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 80,
              width: 108,
              color: black,
              child: Image.asset(
                "assets/images/current.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
