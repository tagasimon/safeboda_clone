import 'package:flutter/material.dart';
import 'package:safeboda_clone/helpers/constants.dart';

class DiscoverWidget extends StatelessWidget {
  const DiscoverWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        // width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  child: Image.network(Constants.kCashlessMadness, height: 90),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // SizedBox(width: 10),
                      Text(Constants.kCashlessMonday,
                          style: Constants.kHeadingTextStyle),
                      Text(Constants.kGetGoing, overflow: TextOverflow.fade),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
