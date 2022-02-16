import 'package:flutter/material.dart';
import 'package:guardian/widgets/map_view.dart';
import '../extensions/resources.dart';

class LandingPage_4th extends StatelessWidget {
  const LandingPage_4th({Key? key}) : super(key: key);

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
                  "Let's protect OUR children",
                  style: R.textNormal,
                )),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/protector.png",
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
                child: ElevatedButton(
                  child: const Text('START'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(40)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MapView()));
                  },
                )),
          )
        ],
      )),
    );
  }
}
