import 'package:flutter/material.dart';
import 'package:safeboda_clone/widgets/what_do_you_need.dart';

class OurServicesWidget extends StatelessWidget {
  const OurServicesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return SizedBox(
      height: deviceSize.height / 3,
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                WhatDoYouNeedItem(
                  asset: Icons.motorcycle,
                  text: "Order Ride",
                ),
                WhatDoYouNeedItem(
                  asset: Icons.money,
                  text: "Pay Bills",
                ),
                WhatDoYouNeedItem(
                  asset: Icons.local_grocery_store,
                  text: "Food & Shop",
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                WhatDoYouNeedItem(
                  asset: Icons.delivery_dining,
                  text: "Deliver Package",
                ),
                WhatDoYouNeedItem(
                  asset: Icons.phone_android,
                  text: "Buy Airtime",
                ),
                WhatDoYouNeedItem(
                  asset: Icons.laptop_mac,
                  text: "Buy Data",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
