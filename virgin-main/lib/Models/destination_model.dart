// To parse this JSON data, do
//
//     final destinations = destinationsFromJson(jsonString);

import 'dart:convert';

Destinations destinationsFromJson(String str) => Destinations.fromJson(json.decode(str));

String destinationsToJson(Destinations data) => json.encode(data.toJson());

class Destinations {
    List<Destination> destinations;

    Destinations({
        required this.destinations,
    });

    factory Destinations.fromJson(Map<String, dynamic> json) => Destinations(
        destinations: List<Destination>.from(json["destinations"].map((x) => Destination.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "destinations": List<dynamic>.from(destinations.map((x) => x.toJson())),
    };
}

class Destination {
    String name;
    String iso;
    Region region;
    String image;
    String flag;
    BundleHighlight bundleHighlight;

    Destination({
        required this.name,
        required this.iso,
        required this.region,
        required this.image,
        required this.flag,
        required this.bundleHighlight,
    });

    factory Destination.fromJson(Map<String, dynamic> json) => Destination(
        name: json["Name"],
        iso: json["Iso"],
        region: regionValues.map[json["Region"]]!,
        image: json["Image"],
        flag: json["Flag"],
        bundleHighlight: BundleHighlight.fromJson(json["BundleHighlight"]),
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "Iso": iso,
        "Region": regionValues.reverse[region],
        "Image": image,
        "Flag": flag,
        "BundleHighlight": bundleHighlight.toJson(),
    };
}

class BundleHighlight {
    String bundleId;
    Text text;

    BundleHighlight({
        required this.bundleId,
        required this.text,
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
    GLOBAL,
    MIDDLE_EAST,
    NORTH_AMERICA,
    OCEANIA,
    SOUTH_AMERICA
}

final regionValues = EnumValues({
    "Africa": Region.AFRICA,
    "Asia": Region.ASIA,
    "Europe": Region.EUROPE,
    "Global": Region.GLOBAL,
    "Middle East": Region.MIDDLE_EAST,
    "North America": Region.NORTH_AMERICA,
    "Oceania": Region.OCEANIA,
    "South America": Region.SOUTH_AMERICA
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
