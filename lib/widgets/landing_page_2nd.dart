import 'package:flutter/material.dart';
import 'package:guardian/widgets/landing_page_3rd.dart';
import '../extensions/resources.dart';

class LandingPage_2nd extends StatelessWidget {
  const LandingPage_2nd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                left: 10.0, top: MediaQuery.of(context).size.width * 0.2),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "12% of children were physically abuse in the past year - WHO",
                  style: R.textNormal,
                )),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/violent.png",
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
                      child: const Text('NEXT'),
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(40)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LandingPage_3rd()));
                      },
                    ),
                    OutlinedButton(
                      child: const Text('SKIP'),
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size.fromHeight(40)),
                      onPressed: () {},
                    ),
                  ],
                )),
          )
        ],
      )),
    );
  }
}
