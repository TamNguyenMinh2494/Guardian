import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:guardian/models/report.dart';
import 'package:guardian/widgets/report_item.dart';
import '../extensions/resources.dart';

class ListChildAbuseView extends StatefulWidget {
  ListChildAbuseView({Key? key}) : super(key: key);

  @override
  State<ListChildAbuseView> createState() => _ListChildAbuseViewState();
}

class _ListChildAbuseViewState extends State<ListChildAbuseView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 8.0, left: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Total cases: 4",
                style: R.textNormal,
              ),
              Text(
                "Resolved: 1",
                style: R.textNormal,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ReportItem(
                      isPressed: false,
                      report: Report(
                          id: "1",
                          address: "180 Cao Thắng, Q.10, TP.HCM",
                          flag: true,
                          pos: 10),
                      onPressed: () {},
                    ),
                    ReportItem(
                      isPressed: false,
                      report: Report(
                          id: "1",
                          address: "8 Nguyễn Văn Tráng, Q.1, TP.HCM",
                          flag: false,
                          pos: 7),
                      onPressed: () {},
                    ),
                    ReportItem(
                      isPressed: false,
                      report: Report(
                          id: "1",
                          address: "279 Trần Nhân Tôn, Q.10, TP.HCM",
                          flag: false,
                          pos: 5),
                      onPressed: () {},
                    ),
                    ReportItem(
                      isPressed: false,
                      report: Report(
                          id: "1",
                          address: "1 Đường số 19, BHHA, Q. Bình Tân...",
                          flag: false,
                          pos: 1),
                      onPressed: () {},
                    ),
                    ReportItem(
                      isPressed: false,
                      report: Report(
                          id: "1",
                          address: "180 Cao Thắng, Q.10, TP.HCM",
                          flag: false,
                          pos: 10),
                      onPressed: () {},
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
