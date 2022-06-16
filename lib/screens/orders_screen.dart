import 'package:flutter/material.dart';
import 'package:safeboda_clone/helpers/constants.dart';

class OrdersScreen extends StatelessWidget {
  static const ordersScreen = "/orders-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                child: const Text(
                  "Orders",
                  style: TextStyle(
                    color: Constants.kSafeBodaBlue,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                      child: const Text("LAST ORDERS"),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Order(context),
                    Order(context),
                    Order(context),
                    Order(context),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Order(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(
              height: 70,
              child: Icon(
                Icons.motorcycle,
                size: 50,
              ),
            ),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text(
                  "Ride",
                  style: TextStyle(
                    color: Constants.kSafeBodaBlue,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "27/11/2019,1:0PM",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Cash",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )),
            Container(
                child: Row(
              children: <Widget>[
                Column(children: const [
                  Text(
                    "10000",
                    style: TextStyle(
                      color: Color(0XFF174757),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "UGX",
                    style: TextStyle(color: Colors.grey),
                  ),
                ]),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                )
              ],
            ))
          ]),
    );
  }
}
