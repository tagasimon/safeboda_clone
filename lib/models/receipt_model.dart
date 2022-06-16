import 'package:flutter/cupertino.dart';

class ReceiptModel with ChangeNotifier {
  final String id;
  final double baseFare;
  final int time;
  final double distance;
  final double peakHourPrice;
  final double minPrice;
  final double subTotal;
  final double rounding;
  final double discount;
  final double rideCost;
  final double paidSafeBodaWallet;
  final double paidSafeBodaCash;

  ReceiptModel({
    required this.id,
    required this.baseFare,
    required this.time,
    required this.distance,
    required this.peakHourPrice,
    required this.minPrice,
    required this.subTotal,
    required this.rounding,
    required this.discount,
    required this.rideCost,
    required this.paidSafeBodaWallet,
    required this.paidSafeBodaCash,
  });
}
