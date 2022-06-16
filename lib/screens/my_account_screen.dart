import 'package:flutter/material.dart';

import 'package:safeboda_clone/helpers/constants.dart';
import 'package:safeboda_clone/widgets/widgets.dart';

class MyAccountScreen extends StatelessWidget {
  static const myAccountScreen = "/my-account-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: const Text(
                    "My Account",
                    style: TextStyle(
                        color: Constants.kSafeBodaBlue,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey.shade400, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 2.0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 30.0,
                          child: ClipOval(
                            child: Image.asset("images/safe_b.png"),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Safe Boda",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Constants.kSafeBodaBlue,
                                ),
                              ),
                              Text("+256773383412"),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey.shade400, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5.0,
                  child: Column(
                    children: [
                      ListTileWidget(
                        tileTitle: "Communications",
                        tileIcon: Icons.email,
                        onPressed: () {},
                      ),
                      const Divider(
                          thickness: 1.0, color: Constants.kSafeBodaGray),
                      ListTileWidget(
                        tileTitle: "ID Verification",
                        tileIcon: Icons.perm_identity,
                        onPressed: () {},
                      ),
                      const Divider(
                          thickness: 1.0, color: Constants.kSafeBodaGray),
                      ListTileWidget(
                        tileTitle: "Payment methods",
                        tileIcon: Icons.payment_outlined,
                        onPressed: () {},
                      ),
                      const Divider(
                          thickness: 1.0, color: Constants.kSafeBodaGray),
                      ListTileWidget(
                        tileTitle: "Change Wallet Pin",
                        tileIcon: Icons.payment_outlined,
                        onPressed: () {},
                      ),
                      const Divider(
                          thickness: 1.0, color: Constants.kSafeBodaGray),
                      ListTileWidget(
                        tileTitle: "Rate App on Store",
                        tileIcon: Icons.star,
                        onPressed: () {},
                      ),
                      const Divider(
                          thickness: 1.0, color: Constants.kSafeBodaGray),
                      ListTileWidget(
                        tileTitle: "Help",
                        tileIcon: Icons.help_outline_sharp,
                        onPressed: () {},
                      ),
                      const Divider(
                          thickness: 1.0, color: Constants.kSafeBodaGray),
                      ListTileWidget(
                        tileTitle: "About",
                        tileIcon: Icons.info_outline,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/safeboda_logo.png",
                          width: 40.0,
                          height: 40.0,
                        ),
                        const Text(
                          "Safe Boda",
                          style: TextStyle(
                            color: Constants.kSafeBodaOrange,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Version 4.1.3",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
