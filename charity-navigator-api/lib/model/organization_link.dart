//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationLink {
  /// Returns a new [OrganizationLink] instance.
  OrganizationLink({
    @required this.ein,
    this.charityName,
    this.links = const {},
  });

  /// The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available.
  String ein;

  /// Name of the charitable organization.
  String charityName;

  /// A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
  Map<String, Object> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationLink &&
     other.ein == ein &&
     other.charityName == charityName &&
     other.links == links;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (ein == null ? 0 : ein.hashCode) +
    (charityName == null ? 0 : charityName.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'OrganizationLink[ein=$ein, charityName=$charityName, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ein'] = ein;
    if (charityName != null) {
      json[r'charityName'] = charityName;
    }
      json[r'_links'] = links;
    return json;
  }

  /// Returns a new [OrganizationLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationLink fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationLink(
        ein: mapValueOfType<String>(json, r'ein'),
        charityName: mapValueOfType<String>(json, r'charityName'),
        links: mapValueOfType<Map<String, Object>>(json, r'_links'),
      );
    }
    return null;
  }

  static List<OrganizationLink> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationLink.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationLink>[];

  static Map<String, OrganizationLink> mapFromJson(dynamic json) {
    final map = <String, OrganizationLink>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationLink.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationLink-objects as value to a dart map
  static Map<String, List<OrganizationLink>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationLink>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationLink.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

