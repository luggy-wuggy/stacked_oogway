//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdvisoryCollectionLink {
  /// Returns a new [AdvisoryCollectionLink] instance.
  AdvisoryCollectionLink({
    this.links = const {},
  });

  /// A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
  Map<String, Object> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdvisoryCollectionLink &&
     other.links == links;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'AdvisoryCollectionLink[links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_links'] = links;
    return json;
  }

  /// Returns a new [AdvisoryCollectionLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdvisoryCollectionLink fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AdvisoryCollectionLink(
        links: mapValueOfType<Map<String, Object>>(json, r'_links'),
      );
    }
    return null;
  }

  static List<AdvisoryCollectionLink> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AdvisoryCollectionLink.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AdvisoryCollectionLink>[];

  static Map<String, AdvisoryCollectionLink> mapFromJson(dynamic json) {
    final map = <String, AdvisoryCollectionLink>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AdvisoryCollectionLink.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AdvisoryCollectionLink-objects as value to a dart map
  static Map<String, List<AdvisoryCollectionLink>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AdvisoryCollectionLink>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AdvisoryCollectionLink.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

