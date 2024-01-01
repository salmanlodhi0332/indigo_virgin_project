// To parse this JSON data, do
//
//     final placesGroups = placesGroupsFromJson(jsonString);

import 'dart:convert';

PlacesGroups placesGroupsFromJson(String str) => PlacesGroups.fromJson(json.decode(str));

String placesGroupsToJson(PlacesGroups data) => json.encode(data.toJson());

class PlacesGroups {
    List<DestinationGroup> destinationGroup;

    PlacesGroups({
        required this.destinationGroup,
    });

    factory PlacesGroups.fromJson(Map<String, dynamic> json) => PlacesGroups(
        destinationGroup: List<DestinationGroup>.from(json["destination_group"].map((x) => DestinationGroup.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "destination_group": List<dynamic>.from(destinationGroup.map((x) => x.toJson())),
    };
}

class DestinationGroup {
    Name name;
    List<Destination> destinations;

    DestinationGroup({
        required this.name,
        required this.destinations,
    });

    factory DestinationGroup.fromJson(Map<String, dynamic> json) => DestinationGroup(
        name: nameValues.map[json["name"]]!,
        destinations: List<Destination>.from(json["destinations"].map((x) => Destination.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": nameValues.reverse[name],
        "destinations": List<dynamic>.from(destinations.map((x) => x.toJson())),
    };
}

class Destination {
    String name;
    String iso;
    Name region;
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
        region: nameValues.map[json["Region"]]!,
        image: json["Image"],
        flag: json["Flag"],
        bundleHighlight: BundleHighlight.fromJson(json["BundleHighlight"]),
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "Iso": iso,
        "Region": nameValues.reverse[region],
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

enum Name {
    AFRICA,
    ASIA,
    EUROPE,
    GLOBAL,
    MIDDLE_EAST,
    NORTH_AMERICA,
    OCEANIA,
    SOUTH_AMERICA
}

final nameValues = EnumValues({
    "Africa": Name.AFRICA,
    "Asia": Name.ASIA,
    "Europe": Name.EUROPE,
    "Global": Name.GLOBAL,
    "Middle East": Name.MIDDLE_EAST,
    "North America": Name.NORTH_AMERICA,
    "Oceania": Name.OCEANIA,
    "South America": Name.SOUTH_AMERICA
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
