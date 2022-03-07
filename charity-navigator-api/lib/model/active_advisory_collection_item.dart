//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActiveAdvisoryCollectionItem {
  /// Returns a new [ActiveAdvisoryCollectionItem] instance.
  ActiveAdvisoryCollectionItem({
    this.mailingAddress,
    @required this.organization,
    this.advisories,
  });

  ActiveAdvisoryCollectionMailingAddress mailingAddress;

  ActiveAdvisoryCollectionOrganization organization;

  AdvisoryRollup advisories;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActiveAdvisoryCollectionItem &&
     other.mailingAddress == mailingAddress &&
     other.organization == organization &&
     other.advisories == advisories;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (mailingAddress == null ? 0 : mailingAddress.hashCode) +
    (organization == null ? 0 : organization.hashCode) +
    (advisories == null ? 0 : advisories.hashCode);

  @override
  String toString() => 'ActiveAdvisoryCollectionItem[mailingAddress=$mailingAddress, organization=$organization, advisories=$advisories]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (mailingAddress != null) {
      json[r'mailingAddress'] = mailingAddress;
    }
      json[r'organization'] = organization;
    if (advisories != null) {
      json[r'advisories'] = advisories;
    }
    return json;
  }

  /// Returns a new [ActiveAdvisoryCollectionItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActiveAdvisoryCollectionItem fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ActiveAdvisoryCollectionItem(
        mailingAddress: ActiveAdvisoryCollectionMailingAddress.fromJson(json[r'mailingAddress']),
        organization: ActiveAdvisoryCollectionOrganization.fromJson(json[r'organization']),
        advisories: AdvisoryRollup.fromJson(json[r'advisories']),
      );
    }
    return null;
  }

  static List<ActiveAdvisoryCollectionItem> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ActiveAdvisoryCollectionItem.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ActiveAdvisoryCollectionItem>[];

  static Map<String, ActiveAdvisoryCollectionItem> mapFromJson(dynamic json) {
    final map = <String, ActiveAdvisoryCollectionItem>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ActiveAdvisoryCollectionItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ActiveAdvisoryCollectionItem-objects as value to a dart map
  static Map<String, List<ActiveAdvisoryCollectionItem>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ActiveAdvisoryCollectionItem>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ActiveAdvisoryCollectionItem.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

