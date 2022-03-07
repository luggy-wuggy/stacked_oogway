//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActiveAdvisoryCollectionOrganization {
  /// Returns a new [ActiveAdvisoryCollectionOrganization] instance.
  ActiveAdvisoryCollectionOrganization({
    this.ein,
    this.charityName,
    this.charityNavigatorURL,
  });

  /// The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available.
  String ein;

  /// Name of the charitable organization.
  String charityName;

  String charityNavigatorURL;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActiveAdvisoryCollectionOrganization &&
     other.ein == ein &&
     other.charityName == charityName &&
     other.charityNavigatorURL == charityNavigatorURL;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (ein == null ? 0 : ein.hashCode) +
    (charityName == null ? 0 : charityName.hashCode) +
    (charityNavigatorURL == null ? 0 : charityNavigatorURL.hashCode);

  @override
  String toString() => 'ActiveAdvisoryCollectionOrganization[ein=$ein, charityName=$charityName, charityNavigatorURL=$charityNavigatorURL]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (ein != null) {
      json[r'ein'] = ein;
    }
    if (charityName != null) {
      json[r'charityName'] = charityName;
    }
    if (charityNavigatorURL != null) {
      json[r'charityNavigatorURL'] = charityNavigatorURL;
    }
    return json;
  }

  /// Returns a new [ActiveAdvisoryCollectionOrganization] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActiveAdvisoryCollectionOrganization fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ActiveAdvisoryCollectionOrganization(
        ein: mapValueOfType<String>(json, r'ein'),
        charityName: mapValueOfType<String>(json, r'charityName'),
        charityNavigatorURL: mapValueOfType<String>(json, r'charityNavigatorURL'),
      );
    }
    return null;
  }

  static List<ActiveAdvisoryCollectionOrganization> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ActiveAdvisoryCollectionOrganization.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ActiveAdvisoryCollectionOrganization>[];

  static Map<String, ActiveAdvisoryCollectionOrganization> mapFromJson(dynamic json) {
    final map = <String, ActiveAdvisoryCollectionOrganization>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ActiveAdvisoryCollectionOrganization.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ActiveAdvisoryCollectionOrganization-objects as value to a dart map
  static Map<String, List<ActiveAdvisoryCollectionOrganization>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ActiveAdvisoryCollectionOrganization>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ActiveAdvisoryCollectionOrganization.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

