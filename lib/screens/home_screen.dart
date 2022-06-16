import 'package:flutter/material.dart';
import 'package:safeboda_clone/helpers/constants.dart';
import 'package:safeboda_clone/sample_data/sample_data.dart';
import 'package:safeboda_clone/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final isMobile = Responsive.isMobile(context);
    return Scaffold(
      backgroundColor: Constants.kScaffoldBackgroundColor,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            // width: isMobile ? double.infinity : 800,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                        DateTime.now().hour > 12
                            ? "Good Afternoon ${SampleData.myAccount.lastName}"
                            : "Good Morning ${SampleData.myAccount.lastName}",
                        style: Constants.kHeadingTextStyle),
                    const MyWalletWidget(),
                    const SizedBox(height: 10.0),
                    const Text("Our Services",
                        style: Constants.kHeadingTextStyle),
                    const SizedBox(height: 10.0),
                    const OurServicesWidget(),
                    const SizedBox(height: 10.0),
                    const Text("Discover SafeBoda",
                        style: Constants.kHeadingTextStyle),
                    const SizedBox(height: 10.0),
                    const DiscoverWidget(),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
