import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:guardian/pages/report_form.dart';
import 'package:guardian/pages/list_view.dart';
import 'package:guardian/widgets/map_view.dart';
import 'package:guardian/widgets/setting.dart';
import '../extensions/resources.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  bool isReport = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 7,
              child: IndexedStack(
                index: _selectedIndex,
                children: [MapView(), ListChildAbuseView(), Setting()],
              ),
            ),
            if (!isReport)
              Expanded(
                flex: 0,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isReport = !isReport;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ReportForm())));
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 6,
                      primary: Colors.white,
                      minimumSize: Size.fromHeight(50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                      )),
                  child: Text(
                    "CHILD ABUSING REPORT",
                    style: TextStyle(
                      color: R.colorPrimary,
                      fontFamily: "Maven Pro",
                      fontSize: 15,
                    ),
                  ),
                ),
              )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          backgroundColor: R.colorPrimary,
          elevation: 0,
          iconSize: 30,
          mouseCursor: SystemMouseCursors.grab,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.location_on),
                label: "Maps",
                backgroundColor: R.colorPrimary),
            BottomNavigationBarItem(
                icon: const Icon(Icons.dehaze_rounded),
                label: "List",
                backgroundColor: R.colorWarning),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: "Setting",
                backgroundColor: R.colorDanger)
          ],
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedFontSize: 15,
          selectedItemColor: R.colorWhite,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        ));
  }

  static final List<Widget> _pages = <Widget>[
    MapView(),
    ListChildAbuseView(),
    Setting()
  ];
}
