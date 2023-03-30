import 'package:flutter/material.dart';
import 'package:flutter_web_autoroute/ui/utils.dart';
import 'package:go_router/go_router.dart';

import '../model/symbol_model.dart';
import 'navigatorRail.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<SymbolModel?> symbols = [];
  String name = "";
  var key1 = GlobalKey();
  @override
  void initState() {
    getDatafromLocalstorage();
    name = Utils().getfromCrypto()["name"];
    /*  WidgetsBinding.instance.addPostFrameCallback((_) {
      String hash = html.window.location.hash;
      if (hash.isNotEmpty && hash.startsWith('#')) {
        String targetId = hash.split("#")[2];
        // print(targetId);
        print(ValueKey(targetId).value);
        // Scrollable.ensureVisible(targetId.currentContext!);

        /*  html.Element? targetElement = html.document.getElementById(targetId);
        if (targetElement != null) {
          double yOffset = targetElement.offset.top.toDouble();
          scrollController.jumpTo(yOffset);
        } */
      }
    }); */
    super.initState();
  }

  getDatafromLocalstorage() async {
    // Retrieve data from localStorage
    symbols = Utils().getSymboldata();
  }

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return NavigatorRailwidget(
      selectedindex: 0,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.lightGreen.withOpacity(0.2),
                  BlendMode.modulate,
                ),
                image: const NetworkImage(
                    "https://t3.ftcdn.net/jpg/05/25/17/90/360_F_525179047_pg8bOmLS5NxT5LtU8Zd1tEbCclI76Xtf.jpg"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Welcome $name !!!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green[900]),
              ),
            ),
            Expanded(
              child: Center(
                child: symbols.isNotEmpty
                    ? ListView.builder(
                        controller: scrollController,
                        itemCount: symbols.length,
                        itemBuilder: (context, i) {
                          return GestureDetector(
                            key: Key(i.toString()),
                            onTap: () {
                              context.go("/navigatorRail/symbolDetail",
                                  extra: symbols[i]?.baseSym);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green[900]!),
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              margin: const EdgeInsetsDirectional.symmetric(
                                  vertical: 10, horizontal: 10),
                              padding: const EdgeInsetsDirectional.symmetric(
                                  vertical: 15, horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        symbols[i]?.baseSym ?? "-",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        symbols[i]?.companyName ?? "-",
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        symbols[i]?.sym.excToken ?? "-",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(symbols[i]?.sym.expiry ?? "-")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    : const Text(
                        "No data available",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
