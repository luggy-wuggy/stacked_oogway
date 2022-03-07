//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActiveAdvisoryCollectionMailingAddress {
  /// Returns a new [ActiveAdvisoryCollectionMailingAddress] instance.
  ActiveAdvisoryCollectionMailingAddress({
    this.city,
    this.stateOrProvince,
  });

  /// City.
  String city;

  /// State or province.
  String stateOrProvince;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActiveAdvisoryCollectionMailingAddress &&
     other.city == city &&
     other.stateOrProvince == stateOrProvince;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (city == null ? 0 : city.hashCode) +
    (stateOrProvince == null ? 0 : stateOrProvince.hashCode);

  @override
  String toString() => 'ActiveAdvisoryCollectionMailingAddress[city=$city, stateOrProvince=$stateOrProvince]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (city != null) {
      json[r'city'] = city;
    }
    if (stateOrProvince != null) {
      json[r'stateOrProvince'] = stateOrProvince;
    }
    return json;
  }

  /// Returns a new [ActiveAdvisoryCollectionMailingAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActiveAdvisoryCollectionMailingAddress fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ActiveAdvisoryCollectionMailingAddress(
        city: mapValueOfType<String>(json, r'city'),
        stateOrProvince: mapValueOfType<String>(json, r'stateOrProvince'),
      );
    }
    return null;
  }

  static List<ActiveAdvisoryCollectionMailingAddress> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ActiveAdvisoryCollectionMailingAddress.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ActiveAdvisoryCollectionMailingAddress>[];

  static Map<String, ActiveAdvisoryCollectionMailingAddress> mapFromJson(dynamic json) {
    final map = <String, ActiveAdvisoryCollectionMailingAddress>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ActiveAdvisoryCollectionMailingAddress.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ActiveAdvisoryCollectionMailingAddress-objects as value to a dart map
  static Map<String, List<ActiveAdvisoryCollectionMailingAddress>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ActiveAdvisoryCollectionMailingAddress>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ActiveAdvisoryCollectionMailingAddress.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

