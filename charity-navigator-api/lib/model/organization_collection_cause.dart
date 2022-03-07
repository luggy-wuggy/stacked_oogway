//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationCollectionCause {
  /// Returns a new [OrganizationCollectionCause] instance.
  OrganizationCollectionCause({
    this.causeID,
    this.causeName,
  });

  /// Charity Navigator's unique identifier for the cause.
  String causeID;

  /// Name of the cause.
  String causeName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationCollectionCause &&
     other.causeID == causeID &&
     other.causeName == causeName;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (causeID == null ? 0 : causeID.hashCode) +
    (causeName == null ? 0 : causeName.hashCode);

  @override
  String toString() => 'OrganizationCollectionCause[causeID=$causeID, causeName=$causeName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (causeID != null) {
      json[r'causeID'] = causeID;
    }
    if (causeName != null) {
      json[r'causeName'] = causeName;
    }
    return json;
  }

  /// Returns a new [OrganizationCollectionCause] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationCollectionCause fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationCollectionCause(
        causeID: mapValueOfType<String>(json, r'causeID'),
        causeName: mapValueOfType<String>(json, r'causeName'),
      );
    }
    return null;
  }

  static List<OrganizationCollectionCause> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationCollectionCause.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationCollectionCause>[];

  static Map<String, OrganizationCollectionCause> mapFromJson(dynamic json) {
    final map = <String, OrganizationCollectionCause>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationCollectionCause.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationCollectionCause-objects as value to a dart map
  static Map<String, List<OrganizationCollectionCause>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationCollectionCause>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationCollectionCause.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

