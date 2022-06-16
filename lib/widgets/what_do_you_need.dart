import 'package:flutter/material.dart';
import 'package:safeboda_clone/helpers/constants.dart';

class WhatDoYouNeedItem extends StatelessWidget {
  final IconData asset;
  final String text;

  const WhatDoYouNeedItem({
    required this.asset,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: 100,
      // width: MediaQuery.of(context).size.width / 2,
      child: ClipRRect(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.only(right: 5.0, top: 5.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Icon(
                    asset,
                    size: 50,
                    color: Constants.colorOrange,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Text(text,
                    textAlign: TextAlign.center,
                    style: Constants.kServicesTextStyle),
              )
            ],
          ),
        ),
      ),
    );
  }
}
