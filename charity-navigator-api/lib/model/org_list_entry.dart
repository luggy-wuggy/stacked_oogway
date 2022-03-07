//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrgListEntry {
  /// Returns a new [OrgListEntry] instance.
  OrgListEntry({
    this.rank,
    this.groupDescription,
    this.groupName,
    this.organization,
  });

  /// Rank of the organization within its containing group.
  int rank;

  /// Description of the group.
  String groupDescription;

  /// Optional name of the group.
  String groupName;

  OrganizationLink organization;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrgListEntry &&
     other.rank == rank &&
     other.groupDescription == groupDescription &&
     other.groupName == groupName &&
     other.organization == organization;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (rank == null ? 0 : rank.hashCode) +
    (groupDescription == null ? 0 : groupDescription.hashCode) +
    (groupName == null ? 0 : groupName.hashCode) +
    (organization == null ? 0 : organization.hashCode);

  @override
  String toString() => 'OrgListEntry[rank=$rank, groupDescription=$groupDescription, groupName=$groupName, organization=$organization]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (rank != null) {
      json[r'rank'] = rank;
    }
    if (groupDescription != null) {
      json[r'groupDescription'] = groupDescription;
    }
    if (groupName != null) {
      json[r'groupName'] = groupName;
    }
    if (organization != null) {
      json[r'organization'] = organization;
    }
    return json;
  }

  /// Returns a new [OrgListEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrgListEntry fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrgListEntry(
        rank: mapValueOfType<int>(json, r'rank'),
        groupDescription: mapValueOfType<String>(json, r'groupDescription'),
        groupName: mapValueOfType<String>(json, r'groupName'),
        organization: OrganizationLink.fromJson(json[r'organization']),
      );
    }
    return null;
  }

  static List<OrgListEntry> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrgListEntry.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrgListEntry>[];

  static Map<String, OrgListEntry> mapFromJson(dynamic json) {
    final map = <String, OrgListEntry>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrgListEntry.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrgListEntry-objects as value to a dart map
  static Map<String, List<OrgListEntry>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrgListEntry>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrgListEntry.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

