//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RatingCollectionLink {
  /// Returns a new [RatingCollectionLink] instance.
  RatingCollectionLink({
    this.links = const {},
  });

  /// A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
  Map<String, Object> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RatingCollectionLink &&
     other.links == links;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'RatingCollectionLink[links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_links'] = links;
    return json;
  }

  /// Returns a new [RatingCollectionLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RatingCollectionLink fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RatingCollectionLink(
        links: mapValueOfType<Map<String, Object>>(json, r'_links'),
      );
    }
    return null;
  }

  static List<RatingCollectionLink> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RatingCollectionLink.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RatingCollectionLink>[];

  static Map<String, RatingCollectionLink> mapFromJson(dynamic json) {
    final map = <String, RatingCollectionLink>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RatingCollectionLink.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RatingCollectionLink-objects as value to a dart map
  static Map<String, List<RatingCollectionLink>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RatingCollectionLink>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RatingCollectionLink.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

