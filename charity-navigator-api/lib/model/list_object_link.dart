//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListObjectLink {
  /// Returns a new [ListObjectLink] instance.
  ListObjectLink({
    this.links = const {},
    this.listID,
    this.listType,
    this.listName,
    this.listAbstract,
    this.listImageURL,
    this.isCurrentlyFeatured,
    this.sortOrder,
  });

  /// A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
  Map<String, Object> links;

  /// Unique ID for the list, assigned by Charity Navigator.
  String listID;

  /// A general classification of the list.
  String listType;

  /// Name of the list.
  String listName;

  /// Short list description.
  String listAbstract;

  /// URL for an image representing the List.
  String listImageURL;

  /// Boolean field, true is list is currently featured on site.
  bool isCurrentlyFeatured;

  /// If list is currently featured, the sort order it is currently displayed in.
  int sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListObjectLink &&
     other.links == links &&
     other.listID == listID &&
     other.listType == listType &&
     other.listName == listName &&
     other.listAbstract == listAbstract &&
     other.listImageURL == listImageURL &&
     other.isCurrentlyFeatured == isCurrentlyFeatured &&
     other.sortOrder == sortOrder;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (links == null ? 0 : links.hashCode) +
    (listID == null ? 0 : listID.hashCode) +
    (listType == null ? 0 : listType.hashCode) +
    (listName == null ? 0 : listName.hashCode) +
    (listAbstract == null ? 0 : listAbstract.hashCode) +
    (listImageURL == null ? 0 : listImageURL.hashCode) +
    (isCurrentlyFeatured == null ? 0 : isCurrentlyFeatured.hashCode) +
    (sortOrder == null ? 0 : sortOrder.hashCode);

  @override
  String toString() => 'ListObjectLink[links=$links, listID=$listID, listType=$listType, listName=$listName, listAbstract=$listAbstract, listImageURL=$listImageURL, isCurrentlyFeatured=$isCurrentlyFeatured, sortOrder=$sortOrder]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_links'] = links;
    if (listID != null) {
      json[r'listID'] = listID;
    }
    if (listType != null) {
      json[r'listType'] = listType;
    }
    if (listName != null) {
      json[r'listName'] = listName;
    }
    if (listAbstract != null) {
      json[r'listAbstract'] = listAbstract;
    }
    if (listImageURL != null) {
      json[r'listImageURL'] = listImageURL;
    }
    if (isCurrentlyFeatured != null) {
      json[r'isCurrentlyFeatured'] = isCurrentlyFeatured;
    }
    if (sortOrder != null) {
      json[r'sortOrder'] = sortOrder;
    }
    return json;
  }

  /// Returns a new [ListObjectLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListObjectLink fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListObjectLink(
        links: mapValueOfType<Map<String, Object>>(json, r'_links'),
        listID: mapValueOfType<String>(json, r'listID'),
        listType: mapValueOfType<String>(json, r'listType'),
        listName: mapValueOfType<String>(json, r'listName'),
        listAbstract: mapValueOfType<String>(json, r'listAbstract'),
        listImageURL: mapValueOfType<String>(json, r'listImageURL'),
        isCurrentlyFeatured: mapValueOfType<bool>(json, r'isCurrentlyFeatured'),
        sortOrder: mapValueOfType<int>(json, r'sortOrder'),
      );
    }
    return null;
  }

  static List<ListObjectLink> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListObjectLink.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListObjectLink>[];

  static Map<String, ListObjectLink> mapFromJson(dynamic json) {
    final map = <String, ListObjectLink>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListObjectLink.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListObjectLink-objects as value to a dart map
  static Map<String, List<ListObjectLink>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListObjectLink>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListObjectLink.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

