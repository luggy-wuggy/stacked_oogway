//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Address {
  /// Returns a new [Address] instance.
  Address({
    this.streetAddress1,
    this.streetAddress2,
    this.city,
    this.stateOrProvince,
    this.postalCode,
    this.country,
  });

  /// First line of the street address.
  String streetAddress1;

  /// Second line of the street address.
  String streetAddress2;

  /// City.
  String city;

  /// State or province.
  String stateOrProvince;

  /// Postal code.
  String postalCode;

  /// Country. Note that Charity Navigator currently covers only organizations based in the United States. If the Country is null, empty, or missing, it is safe to assume a US-based address.
  String country;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Address &&
     other.streetAddress1 == streetAddress1 &&
     other.streetAddress2 == streetAddress2 &&
     other.city == city &&
     other.stateOrProvince == stateOrProvince &&
     other.postalCode == postalCode &&
     other.country == country;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (streetAddress1 == null ? 0 : streetAddress1.hashCode) +
    (streetAddress2 == null ? 0 : streetAddress2.hashCode) +
    (city == null ? 0 : city.hashCode) +
    (stateOrProvince == null ? 0 : stateOrProvince.hashCode) +
    (postalCode == null ? 0 : postalCode.hashCode) +
    (country == null ? 0 : country.hashCode);

  @override
  String toString() => 'Address[streetAddress1=$streetAddress1, streetAddress2=$streetAddress2, city=$city, stateOrProvince=$stateOrProvince, postalCode=$postalCode, country=$country]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (streetAddress1 != null) {
      json[r'streetAddress1'] = streetAddress1;
    }
    if (streetAddress2 != null) {
      json[r'streetAddress2'] = streetAddress2;
    }
    if (city != null) {
      json[r'city'] = city;
    }
    if (stateOrProvince != null) {
      json[r'stateOrProvince'] = stateOrProvince;
    }
    if (postalCode != null) {
      json[r'postalCode'] = postalCode;
    }
    if (country != null) {
      json[r'country'] = country;
    }
    return json;
  }

  /// Returns a new [Address] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Address fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Address(
        streetAddress1: mapValueOfType<String>(json, r'streetAddress1'),
        streetAddress2: mapValueOfType<String>(json, r'streetAddress2'),
        city: mapValueOfType<String>(json, r'city'),
        stateOrProvince: mapValueOfType<String>(json, r'stateOrProvince'),
        postalCode: mapValueOfType<String>(json, r'postalCode'),
        country: mapValueOfType<String>(json, r'country'),
      );
    }
    return null;
  }

  static List<Address> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Address.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Address>[];

  static Map<String, Address> mapFromJson(dynamic json) {
    final map = <String, Address>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Address.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Address-objects as value to a dart map
  static Map<String, List<Address>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Address>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Address.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

