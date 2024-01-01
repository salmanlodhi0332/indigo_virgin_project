// To parse this JSON data, do
//
//     final destinationDetail = destinationDetailFromJson(jsonString);

import 'dart:convert';

DestinationDetail destinationDetailFromJson(String str) => DestinationDetail.fromJson(json.decode(str));

String destinationDetailToJson(DestinationDetail data) => json.encode(data.toJson());

class DestinationDetail {
    List<DataBundle>? dataBundles;

    DestinationDetail({
        this.dataBundles,
    });

    factory DestinationDetail.fromJson(Map<String, dynamic> json) => DestinationDetail(
        dataBundles: json["data_bundles"] == null ? [] : List<DataBundle>.from(json["data_bundles"]!.map((x) => DataBundle.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data_bundles": dataBundles == null ? [] : List<dynamic>.from(dataBundles!.map((x) => x.toJson())),
    };
}

class DataBundle {
    String? name;
    String? description;
    List<ECountry>? baseCountries;
    int? dataAmount;
    int? duration;
    List<Speed>? speed;
    bool? autoStart;
    List<ECountry>? coverageCountries;
    Price? price;
    List<String>? tags;
    List<NetworkOperator>? networkOperators;

    DataBundle({
        this.name,
        this.description,
        this.baseCountries,
        this.dataAmount,
        this.duration,
        this.speed,
        this.autoStart,
        this.coverageCountries,
        this.price,
        this.tags,
        this.networkOperators,
    });

    factory DataBundle.fromJson(Map<String, dynamic> json) => DataBundle(
        name: json["name"],
        description: json["description"],
        baseCountries: json["base_countries"] == null ? [] : List<ECountry>.from(json["base_countries"]!.map((x) => ECountry.fromJson(x))),
        dataAmount: json["data_amount"],
        duration: json["duration"],
        speed: json["speed"] == null ? [] : List<Speed>.from(json["speed"]!.map((x) => speedValues.map[x]!)),
        autoStart: json["auto_start"],
        coverageCountries: json["coverage_countries"] == null ? [] : List<ECountry>.from(json["coverage_countries"]!.map((x) => ECountry.fromJson(x))),
        price: json["price"] == null ? null : Price.fromJson(json["price"]),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        networkOperators: json["network_operators"] == null ? [] : List<NetworkOperator>.from(json["network_operators"]!.map((x) => NetworkOperator.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "base_countries": baseCountries == null ? [] : List<dynamic>.from(baseCountries!.map((x) => x.toJson())),
        "data_amount": dataAmount,
        "duration": duration,
        "speed": speed == null ? [] : List<dynamic>.from(speed!.map((x) => speedValues.reverse[x])),
        "auto_start": autoStart,
        "coverage_countries": coverageCountries == null ? [] : List<dynamic>.from(coverageCountries!.map((x) => x.toJson())),
        "price": price?.toJson(),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "network_operators": networkOperators == null ? [] : List<dynamic>.from(networkOperators!.map((x) => x.toJson())),
    };
}

class ECountry {
    String? name;
    String? iso;
    Region? region;
    String? image;
    String? flag;
    BundleHighlight? bundleHighlight;

    ECountry({
        this.name,
        this.iso,
        this.region,
        this.image,
        this.flag,
        this.bundleHighlight,
    });

    factory ECountry.fromJson(Map<String, dynamic> json) => ECountry(
        name: json["Name"],
        iso: json["Iso"],
        region: regionValues.map[json["Region"]]!,
        image: json["Image"],
        flag: json["Flag"],
        bundleHighlight: json["BundleHighlight"] == null ? null : BundleHighlight.fromJson(json["BundleHighlight"]),
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "Iso": iso,
        "Region": regionValues.reverse[region],
        "Image": image,
        "Flag": flag,
        "BundleHighlight": bundleHighlight?.toJson(),
    };
}

class BundleHighlight {
    String? bundleId;
    Text? text;

    BundleHighlight({
        this.bundleId,
        this.text,
    });

    factory BundleHighlight.fromJson(Map<String, dynamic> json) => BundleHighlight(
        bundleId: json["BundleId"],
        text: textValues.map[json["Text"]]!,
    );

    Map<String, dynamic> toJson() => {
        "BundleId": bundleId,
        "Text": textValues.reverse[text],
    };
}

enum Text {
    PREFFERED_BUNDLE_FOR_THIS_COUNTRY
}

final textValues = EnumValues({
    "Preffered bundle for this country.": Text.PREFFERED_BUNDLE_FOR_THIS_COUNTRY
});

enum Region {
    AFRICA,
    ASIA,
    EUROPE,
    MIDDLE_EAST,
    NORTH_AMERICA,
    OCEANIA,
    SOUTH_AMERICA
}

final regionValues = EnumValues({
    "Africa": Region.AFRICA,
    "Asia": Region.ASIA,
    "Europe": Region.EUROPE,
    "Middle East": Region.MIDDLE_EAST,
    "North America": Region.NORTH_AMERICA,
    "Oceania": Region.OCEANIA,
    "South America": Region.SOUTH_AMERICA
});

class NetworkOperator {
    String? name;
    String? mcc;
    String? mnc;
    String? tagid;
    List<Speed>? speeds;

    NetworkOperator({
        this.name,
        this.mcc,
        this.mnc,
        this.tagid,
        this.speeds,
    });

    factory NetworkOperator.fromJson(Map<String, dynamic> json) => NetworkOperator(
        name: json["Name"],
        mcc: json["Mcc"],
        mnc: json["Mnc"],
        tagid: json["Tagid"],
        speeds: json["Speeds"] == null ? [] : List<Speed>.from(json["Speeds"]!.map((x) => speedValues.map[x]!)),
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "Mcc": mcc,
        "Mnc": mnc,
        "Tagid": tagid,
        "Speeds": speeds == null ? [] : List<dynamic>.from(speeds!.map((x) => speedValues.reverse[x])),
    };
}

enum Speed {
    THE_2_G,
    THE_3_G,
    THE_4_G
}

final speedValues = EnumValues({
    "2G": Speed.THE_2_G,
    "3G": Speed.THE_3_G,
    "4G": Speed.THE_4_G
});

class Price {
    double? value;
    Currency? currency;

    Price({
        this.value,
        this.currency,
    });

    factory Price.fromJson(Map<String, dynamic> json) => Price(
        value: json["value"]?.toDouble(),
        currency: json["currency"] == null ? null : Currency.fromJson(json["currency"]),
    );

    Map<String, dynamic> toJson() => {
        "value": value,
        "currency": currency?.toJson(),
    };
}

class Currency {
    String? name;
    String? iso;
    String? symbol;

    Currency({
        this.name,
        this.iso,
        this.symbol,
    });

    factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        name: json["name"],
        iso: json["iso"],
        symbol: json["symbol"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "iso": iso,
        "symbol": symbol,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
