import 'package:flutter/material.dart';

import 'navigatorRail.dart';

class SymbolDetail extends StatefulWidget {
  final String state;
  const SymbolDetail({super.key, required this.state});

  @override
  State<SymbolDetail> createState() => _SymbolDetailState();
}

class _SymbolDetailState extends State<SymbolDetail> {
  @override
  Widget build(BuildContext context) {
    return NavigatorRailwidget(
      selectedindex: 0,
      child: Center(
          child: SizedBox(
        height: 300,
        child: Text(
          widget.state,
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.green[900]),
        ),
      )),
    );
  }
}
