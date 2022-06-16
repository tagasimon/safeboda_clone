import 'package:flutter/material.dart';
import 'package:safeboda_clone/helpers/constants.dart';
import 'package:safeboda_clone/widgets/options_widget.dart';

class MyWalletWidget extends StatelessWidget {
  const MyWalletWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final deviceSize = MediaQuery.of(context).size;

    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Constants.kSafeBodaOrange,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "My Wallet",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.info, color: Colors.white))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "UGX ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                      const Text(
                        // TODO This will come from the Model Class
                        "5000",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const IconButton(
                        // TODO Toggle the Balance
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye, color: Colors.white),
                      ),
                      const Spacer(),
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            primary: Colors.white),
                        icon: Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColor,
                        ),
                        label: const Text(
                          "Deposit",
                          style: TextStyle(color: Constants.kSafeBodaOrange),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Find Agent, Transactions, Withdraw, Savings
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: OptionsWidget(
                        title: "Find Agent",
                        icon: Icons.search_sharp,
                        onPressed: () {}),
                  ),
                  Expanded(
                    child: OptionsWidget(
                        title: "Withdraw",
                        icon: Icons.download,
                        onPressed: () {}),
                  ),
                  Expanded(
                    child: OptionsWidget(
                        title: "Transactions",
                        icon: Icons.list_sharp,
                        onPressed: () {}),
                  ),
                  Expanded(
                    child: OptionsWidget(
                        title: "Savings", icon: Icons.money, onPressed: () {}),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Constants.kButtonGreen,
                            minimumSize: const Size(10, 50)),
                        onPressed: () {},
                        icon: const Icon(Icons.double_arrow_outlined,
                            color: Colors.white),
                        label: const Text(
                          "Send Money",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            primary: Constants.kButtonGreen,
                            side: const BorderSide(
                              color: Constants.kButtonGreen,
                              width: 2.0,
                            ),
                            minimumSize: const Size(10, 50)),
                        onPressed: () {},
                        icon: const Icon(Icons.money),
                        label: const Text(
                          "Pay",
                          style: TextStyle(
                            // color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
