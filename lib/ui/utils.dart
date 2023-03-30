import 'dart:convert';
import 'dart:html';

import 'package:encrypt/encrypt.dart';


import '../main.dart';
import '../model/symbol_model.dart';

class Utils {
  final iv = IV.fromBase64("Some_Key");

  securestorage() {}

  getData() {
    return json.decode(storeinlocal
        ? window.localStorage["loginData"] ?? "{}"
        : window.sessionStorage["loginData"] ?? "{}");
  }

  setData(Map<String, dynamic> data) {
    storeinlocal
        ? (window.localStorage["loginData"] = json.encode(data))
        : (window.sessionStorage["loginData"] = json.encode(data));
  }

  List<SymbolModel?> getSymboldata() {
    Map<String, dynamic> userData = {};

    String? cookieValue =
        window.localStorage["symbolData"] ?? ""; //getCookieValue('userData');
    userData = jsonDecode(cookieValue);
    List res = (userData["data"]) ?? [];
    List<SymbolModel?> symbolData = res.map((map) {
      return SymbolModel.fromJson(map);
    }).toList();
    return symbolData;
  }

  String? getCookieValue(String name) {
    String cookie = document.cookie ?? "";
    List<String> cookieList = cookie.split(';');
    for (var i = 0; i < cookieList.length; i++) {
      String cookiePair = cookieList[i].trim();
      if (cookiePair.startsWith('$name=')) {
        return cookiePair.substring(name.length + 1);
      }
    }
    return null;
  }

  setSymboldata() {
    var data = {
      "data": [
        {
          "dispSym": "CRUDEOIL 20MAR FUT",
          "sym": {
            "optionType": "XX",
            "exc": "MCX",
            "lotSize": "100",
            "multiplier": "100.0",
            "strike": "0.00",
            "streamSym": "247398_MCX",
            "instrument": "FUTCOM",
            "expiry": "20-03-2023",
            "id": "FUTCOM_CRUDEOIL_MCX_2023-03-20",
            "asset": "future",
            "excToken": "247398",
            "tickSize": "1.0"
          },
          "companyName": "Light Sweet Crude Oil",
          "addInfo": {},
          "baseSym": "CRUDEOIL"
        },
        {
          "isFno": "true",
          "dispSym": "INFY-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "1594_NSE",
            "instrument": "STK",
            "id": "STK_INFY_EQ_NSE",
            "asset": "equity",
            "excToken": "1594",
            "tickSize": "0.05"
          },
          "companyName": "INFOSYS LIMITED",
          "addInfo": {},
          "baseSym": "INFY"
        },
        {
          "dispSym": "ZOMATO-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "5097_NSE",
            "instrument": "STK",
            "id": "STK_ZOMATO_EQ_NSE",
            "asset": "equity",
            "excToken": "5097",
            "tickSize": "0.05"
          },
          "companyName": "ZOMATO LIMITED",
          "addInfo": {},
          "baseSym": "ZOMATO"
        },
        {
          "dispSym": "THACKER-XT",
          "sym": {
            "exc": "BSE",
            "series": "XT",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "509945_BSE",
            "instrument": "STK",
            "id": "STK_THACKER_XT_BSE",
            "asset": "equity",
            "excToken": "509945",
            "tickSize": "0.05"
          },
          "companyName": "THACKER & CO.LTD.",
          "addInfo": {},
          "baseSym": "THACKER"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        },
        {
          "isFno": "true",
          "dispSym": "TATACHEM-EQ",
          "sym": {
            "exc": "NSE",
            "otherExch": ["BSE"],
            "series": "EQ",
            "lotSize": "1",
            "multiplier": "1",
            "streamSym": "3405_NSE",
            "instrument": "STK",
            "id": "STK_TATACHEM_EQ_NSE",
            "asset": "equity",
            "excToken": "3405",
            "tickSize": "0.05"
          },
          "companyName": "TATA CHEMICALS LTD",
          "addInfo": {},
          "baseSym": "TATACHEM"
        }
      ]
    };

    window.localStorage["symbolData"] = json.encode(data);

    document.cookie =
        'userData=${json.encode(data)}; expires=Thu, 20 Mar 2023 12:19:00 UTC; path=/';
  }

  getfromCrypto() {
    final Encrypter encrypter =
        Encrypter(AES(Key.fromUtf8("flutterwebsample")));
    final encryptedDataString = storeinlocal
        ? window.localStorage['encryptedData']
        : window.sessionStorage['encryptedData'];
    Encrypted encryptedData = Encrypted.fromBase64(encryptedDataString ?? "");
    if (encryptedData.bytes.isEmpty) return {};
    final decryptedData = encrypter.decrypt(encryptedData, iv: iv);
    print("decryptedData$decryptedData");

    return json.decode(decryptedData == "" ? "{}" : decryptedData);
  }

  setinCrypto(Map<String, dynamic> data) {
    final Encrypter encrypter =
        Encrypter(AES(Key.fromUtf8("flutterwebsample")));
    Encrypted encryptedData = encrypter.encrypt(json.encode(data), iv: iv);
    storeinlocal
        ? window.localStorage['encryptedData'] = encryptedData.base64
        : window.sessionStorage['encryptedData'] = encryptedData.base64;
    print("encryptedData${encryptedData.base64}");
  }
}
