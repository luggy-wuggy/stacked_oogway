//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationGroup {
  /// Returns a new [OrganizationGroup] instance.
  OrganizationGroup({
    this.groupName,
    this.groupDescription,
    this.organizations = const [],
  });

  /// Optional name of the group.
  String groupName;

  /// Description of the group.
  String groupDescription;

  /// Organization entries in the list.
  List<OrgListEntry> organizations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationGroup &&
     other.groupName == groupName &&
     other.groupDescription == groupDescription &&
     other.organizations == organizations;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (groupName == null ? 0 : groupName.hashCode) +
    (groupDescription == null ? 0 : groupDescription.hashCode) +
    (organizations == null ? 0 : organizations.hashCode);

  @override
  String toString() => 'OrganizationGroup[groupName=$groupName, groupDescription=$groupDescription, organizations=$organizations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (groupName != null) {
      json[r'groupName'] = groupName;
    }
    if (groupDescription != null) {
      json[r'groupDescription'] = groupDescription;
    }
    if (organizations != null) {
      json[r'organizations'] = organizations;
    }
    return json;
  }

  /// Returns a new [OrganizationGroup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationGroup fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationGroup(
        groupName: mapValueOfType<String>(json, r'groupName'),
        groupDescription: mapValueOfType<String>(json, r'groupDescription'),
        organizations: OrgListEntry.listFromJson(json[r'organizations']),
      );
    }
    return null;
  }

  static List<OrganizationGroup> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationGroup.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationGroup>[];

  static Map<String, OrganizationGroup> mapFromJson(dynamic json) {
    final map = <String, OrganizationGroup>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationGroup.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationGroup-objects as value to a dart map
  static Map<String, List<OrganizationGroup>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationGroup>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationGroup.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

