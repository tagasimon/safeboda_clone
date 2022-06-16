import 'package:flutter/material.dart';
import 'package:safeboda_clone/helpers/constants.dart';

class OptionsWidget extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final IconData icon;
  const OptionsWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 35,
            color: Constants.kSafeBodaGray2,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Constants.kSafeBodaGray2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
