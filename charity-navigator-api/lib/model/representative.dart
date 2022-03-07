//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Representative {
  /// Returns a new [Representative] instance.
  Representative({
    this.name,
    this.title,
  });

  /// The name of the indivdual holding this position within the organization <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  String name;

  /// The title of this individual at this organization <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  String title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Representative &&
     other.name == name &&
     other.title == title;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (title == null ? 0 : title.hashCode);

  @override
  String toString() => 'Representative[name=$name, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    return json;
  }

  /// Returns a new [Representative] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Representative fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Representative(
        name: mapValueOfType<String>(json, r'name'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<Representative> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Representative.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Representative>[];

  static Map<String, Representative> mapFromJson(dynamic json) {
    final map = <String, Representative>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Representative.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Representative-objects as value to a dart map
  static Map<String, List<Representative>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Representative>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Representative.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

