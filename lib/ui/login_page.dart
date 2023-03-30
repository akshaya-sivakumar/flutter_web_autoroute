import 'package:flutter/material.dart';
import 'package:flutter_web_autoroute/ui/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  initSanity(String username, String passwords) async {}

  final formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
          body: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://t3.ftcdn.net/jpg/05/25/17/90/360_F_525179047_pg8bOmLS5NxT5LtU8Zd1tEbCclI76Xtf.jpg"))),
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 500,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 40),
                    child: Card(
                      color: Colors.white.withOpacity(0.5),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: TextWidget(
                                "UserName",
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: TextFormField(
                                controller: username,
                                // autofocus: true,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter username";
                                  }
                                  return null;
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  focusColor: Colors.white,
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: TextWidget(
                                "Password",
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: TextFormField(
                                controller: password,
                                // autofocus: true,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter username";
                                  }
                                  return null;
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  focusColor: Colors.white,
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              alignment: Alignment.center,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.green[900],
                                  ),
                                  onPressed: () async {
                                    //generateSessionToken();
                                    if (formKey.currentState!.validate()) {
                                      Utils().setinCrypto({
                                        "name": username.text,
                                        "pwd": password.text
                                      });

                                      await Utils().setSymboldata();

                                      appRoute
                                          .pushNamed("/navigatorrail?index=0");
                                    }
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    child: const TextWidget(
                                      "Login",
                                      color: Colors.white,
                                      size: 20,
                                      fontweight: FontWeight.bold,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text("Store in local storage :"),
                        Switch(
                          activeColor: Colors.green[900],
                          value: storeinlocal,
                          onChanged: (value) async {
                            setState(() {
                              storeinlocal = value;
                            });

                            SharedPreferences pref =
                                await SharedPreferences.getInstance();
                            pref.setBool("storedatainlocal", value);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }

  /*  String generateSessionToken() {
    final random = Random.secure();
    final tokenBytes = List.generate(32, (i) => random.nextInt(256));
    final token = base64Url.encode(tokenBytes);
    const secretKey = 'my_secret_key';
    final hmac = Hmac(sha256, utf8.encode(secretKey));
    final digest = hmac.convert(utf8.encode(token));
    final signature = base64Url.encode(digest.bytes);
    return '$token.$signature';
  } */
}

class TextWidget extends StatelessWidget {
  const TextWidget(this.name,
      {Key? key, this.color, this.size, this.fontweight})
      : super(key: key);

  final String name;
  final Color? color;
  final double? size;
  final FontWeight? fontweight;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: size ?? 15,
          fontWeight: fontweight ?? FontWeight.normal),
    );
  }
}

class LoaderWidget {
  void showLoader(BuildContext context,
      {String? text, bool stopLoader = false}) {
    stopLoader
        ? Navigator.pop(context)
        : showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return WillPopScope(
                  onWillPop: () async => false,
                  child: AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    backgroundColor: Colors.white,
                    content: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: CircularProgressIndicator(
                              strokeWidth: 4,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.black)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          text ?? "",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: const Size.fromHeight(19).height),
                        )
                      ],
                    ),
                  ));
            },
          );
  }
}
