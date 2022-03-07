//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationObjectCause {
  /// Returns a new [OrganizationObjectCause] instance.
  OrganizationObjectCause({
    this.causeID,
    this.causeName,
    this.image,
    this.charityNavigatorURL,
  });

  /// Charity Navigator's unique identifier for the cause.
  String causeID;

  /// Name of the cause.
  String causeName;

  /// URL for an image representing the Cause.
  String image;

  /// URL to the Cause page on Charity Navigator's website.
  String charityNavigatorURL;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationObjectCause &&
     other.causeID == causeID &&
     other.causeName == causeName &&
     other.image == image &&
     other.charityNavigatorURL == charityNavigatorURL;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (causeID == null ? 0 : causeID.hashCode) +
    (causeName == null ? 0 : causeName.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (charityNavigatorURL == null ? 0 : charityNavigatorURL.hashCode);

  @override
  String toString() => 'OrganizationObjectCause[causeID=$causeID, causeName=$causeName, image=$image, charityNavigatorURL=$charityNavigatorURL]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (causeID != null) {
      json[r'causeID'] = causeID;
    }
    if (causeName != null) {
      json[r'causeName'] = causeName;
    }
    if (image != null) {
      json[r'image'] = image;
    }
    if (charityNavigatorURL != null) {
      json[r'charityNavigatorURL'] = charityNavigatorURL;
    }
    return json;
  }

  /// Returns a new [OrganizationObjectCause] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationObjectCause fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationObjectCause(
        causeID: mapValueOfType<String>(json, r'causeID'),
        causeName: mapValueOfType<String>(json, r'causeName'),
        image: mapValueOfType<String>(json, r'image'),
        charityNavigatorURL: mapValueOfType<String>(json, r'charityNavigatorURL'),
      );
    }
    return null;
  }

  static List<OrganizationObjectCause> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationObjectCause.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationObjectCause>[];

  static Map<String, OrganizationObjectCause> mapFromJson(dynamic json) {
    final map = <String, OrganizationObjectCause>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationObjectCause.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationObjectCause-objects as value to a dart map
  static Map<String, List<OrganizationObjectCause>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationObjectCause>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationObjectCause.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

