class SymbolModel {
  SymbolModel({
    required this.dispSym,
    required this.sym,
    required this.companyName,
    required this.addInfo,
    required this.baseSym,
  });
  late final String dispSym;
  late final Sym sym;
  late final String companyName;
  late final AddInfo addInfo;
  late final String baseSym;

  SymbolModel.fromJson(Map<String, dynamic> json) {
    dispSym = json['dispSym'];
    sym = Sym.fromJson(json['sym']);
    companyName = json['companyName'];
    addInfo = AddInfo.fromJson(json['addInfo']);
    baseSym = json['baseSym'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['dispSym'] = dispSym;
    data['sym'] = sym.toJson();
    data['companyName'] = companyName;
    data['addInfo'] = addInfo.toJson();
    data['baseSym'] = baseSym;
    return data;
  }
}

class Sym {
  Sym({
    required this.optionType,
    required this.exc,
    required this.lotSize,
    required this.multiplier,
    required this.strike,
    required this.streamSym,
    required this.instrument,
    required this.expiry,
    required this.id,
    required this.asset,
    required this.excToken,
    required this.tickSize,
  });
  late final String optionType;
  late final String exc;
  late final String lotSize;
  late final String multiplier;
  late final String strike;
  late final String streamSym;
  late final String instrument;
  late final String expiry;
  late final String id;
  late final String asset;
  late final String excToken;
  late final String tickSize;

  Sym.fromJson(Map<String, dynamic> json) {
    optionType = json['optionType'] ?? "";
    exc = json['exc'] ?? "";
    lotSize = json['lotSize'];
    multiplier = json['multiplier'];
    strike = json['strike'] ?? "-";
    streamSym = json['streamSym'] ?? "-";
    instrument = json['instrument'] ?? "-";
    expiry = json['expiry'] ?? "-";
    id = json['id'] ?? "-";
    asset = json['asset'] ?? "-";
    excToken = json['excToken'] ?? "-";
    tickSize = json['tickSize'] ?? "-";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['optionType'] = optionType;
    data['exc'] = exc;
    data['lotSize'] = lotSize;
    data['multiplier'] = multiplier;
    data['strike'] = strike;
    data['streamSym'] = streamSym;
    data['instrument'] = instrument;
    data['expiry'] = expiry;
    data['id'] = id;
    data['asset'] = asset;
    data['excToken'] = excToken;
    data['tickSize'] = tickSize;
    return data;
  }
}

class AddInfo {
  AddInfo();

  AddInfo.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    return data;
  }
}
