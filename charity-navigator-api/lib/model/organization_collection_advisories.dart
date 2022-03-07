//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationCollectionAdvisories {
  /// Returns a new [OrganizationCollectionAdvisories] instance.
  OrganizationCollectionAdvisories({
    this.severity,
    this.active,
  });

  Severity severity;

  AdvisoryCollectionLink active;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationCollectionAdvisories &&
     other.severity == severity &&
     other.active == active;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (severity == null ? 0 : severity.hashCode) +
    (active == null ? 0 : active.hashCode);

  @override
  String toString() => 'OrganizationCollectionAdvisories[severity=$severity, active=$active]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (severity != null) {
      json[r'severity'] = severity;
    }
    if (active != null) {
      json[r'active'] = active;
    }
    return json;
  }

  /// Returns a new [OrganizationCollectionAdvisories] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationCollectionAdvisories fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationCollectionAdvisories(
        severity: Severity.fromJson(json[r'severity']),
        active: AdvisoryCollectionLink.fromJson(json[r'active']),
      );
    }
    return null;
  }

  static List<OrganizationCollectionAdvisories> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationCollectionAdvisories.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationCollectionAdvisories>[];

  static Map<String, OrganizationCollectionAdvisories> mapFromJson(dynamic json) {
    final map = <String, OrganizationCollectionAdvisories>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationCollectionAdvisories.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationCollectionAdvisories-objects as value to a dart map
  static Map<String, List<OrganizationCollectionAdvisories>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationCollectionAdvisories>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationCollectionAdvisories.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

