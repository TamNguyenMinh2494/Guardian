import 'package:flutter/material.dart';
import 'package:guardian/pages/dashboard.dart';
import 'package:guardian/pages/landing_page_2nd.dart';
import '../extensions/resources.dart';

class LandingPage_1st extends StatelessWidget {
  const LandingPage_1st({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.2),
            child: Container(
                alignment: Alignment.center,
                child: Column(children: [
                  Text(
                    "Guardian",
                    style: R.textTitle,
                  ),
                  Text(
                    "Save our children",
                    style: R.textHeading,
                  ),
                ])),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/international-childrens-day.png",
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.width * 0.1),
            child: Container(
                alignment: Alignment.center,
                width: 100,
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text('START'),
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(40)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LandingPage_2nd()));
                      },
                    ),
                    OutlinedButton(
                      child: const Text('SKIP'),
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size.fromHeight(40)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Dashboard())));
                      },
                    ),
                  ],
                )),
          )
        ],
      )),
    );
  }
}
