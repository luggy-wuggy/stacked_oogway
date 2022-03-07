//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationObjectGetOrganizationResponse404 {
  /// Returns a new [OrganizationObjectGetOrganizationResponse404] instance.
  OrganizationObjectGetOrganizationResponse404({
    this.errorMessage,
  });

  String errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationObjectGetOrganizationResponse404 &&
     other.errorMessage == errorMessage;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (errorMessage == null ? 0 : errorMessage.hashCode);

  @override
  String toString() => 'OrganizationObjectGetOrganizationResponse404[errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (errorMessage != null) {
      json[r'errorMessage'] = errorMessage;
    }
    return json;
  }

  /// Returns a new [OrganizationObjectGetOrganizationResponse404] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationObjectGetOrganizationResponse404 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationObjectGetOrganizationResponse404(
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
      );
    }
    return null;
  }

  static List<OrganizationObjectGetOrganizationResponse404> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationObjectGetOrganizationResponse404.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationObjectGetOrganizationResponse404>[];

  static Map<String, OrganizationObjectGetOrganizationResponse404> mapFromJson(dynamic json) {
    final map = <String, OrganizationObjectGetOrganizationResponse404>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationObjectGetOrganizationResponse404.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationObjectGetOrganizationResponse404-objects as value to a dart map
  static Map<String, List<OrganizationObjectGetOrganizationResponse404>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationObjectGetOrganizationResponse404>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationObjectGetOrganizationResponse404.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

