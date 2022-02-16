import 'package:flutter/material.dart';

import '../models/report.dart';

class ReportItem extends StatefulWidget {
  Report? report;
  bool isPressed;
  final Function? onPressed;
  ReportItem({Key? key, this.report, required this.isPressed, this.onPressed})
      : super(key: key);

  @override
  State<ReportItem> createState() => _ReportItemState();
}

class _ReportItemState extends State<ReportItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 8.0,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {},
          child: Container(
            child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(widget.report!.address.toString()),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            widget.isPressed = !widget.isPressed;
                          });
                        },
                        icon: Padding(
                            padding: const EdgeInsets.only(
                                left: 4, right: 4, top: 0),
                            child: widget.isPressed == true
                                ? const Icon(Icons.flag_outlined)
                                : const Icon(Icons.flag_rounded))),
                    Text(widget.report!.pos.toString()),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
