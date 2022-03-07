//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelList {
  /// Returns a new [ModelList] instance.
  ModelList({
    this.listID,
    this.listName,
    this.listType,
    this.isCurrentlyFeatured,
    this.sortOrder,
    this.listAbstract,
    this.listExplanation,
    this.listImageURL,
    this.charityNavigatorURL,
    this.groups = const [],
  });

  /// Unique ID for the list, assigned by Charity Navigator.
  String listID;

  /// Name of the list.
  String listName;

  /// A general classification of the list.
  String listType;

  /// Boolean field, true is list is currently featured on site.
  bool isCurrentlyFeatured;

  /// If list is currently featured, the sort order it is currently displayed in.
  int sortOrder;

  /// Short list description.
  String listAbstract;

  /// Long list description.
  String listExplanation;

  /// URL for an image representing the List.
  String listImageURL;

  /// URL to the List page on Charity Navigator's website.
  String charityNavigatorURL;

  /// Groups of organizations within the list. May be a single, unnamed group in the case of a flat list.
  List<OrganizationGroup> groups;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelList &&
     other.listID == listID &&
     other.listName == listName &&
     other.listType == listType &&
     other.isCurrentlyFeatured == isCurrentlyFeatured &&
     other.sortOrder == sortOrder &&
     other.listAbstract == listAbstract &&
     other.listExplanation == listExplanation &&
     other.listImageURL == listImageURL &&
     other.charityNavigatorURL == charityNavigatorURL &&
     other.groups == groups;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (listID == null ? 0 : listID.hashCode) +
    (listName == null ? 0 : listName.hashCode) +
    (listType == null ? 0 : listType.hashCode) +
    (isCurrentlyFeatured == null ? 0 : isCurrentlyFeatured.hashCode) +
    (sortOrder == null ? 0 : sortOrder.hashCode) +
    (listAbstract == null ? 0 : listAbstract.hashCode) +
    (listExplanation == null ? 0 : listExplanation.hashCode) +
    (listImageURL == null ? 0 : listImageURL.hashCode) +
    (charityNavigatorURL == null ? 0 : charityNavigatorURL.hashCode) +
    (groups == null ? 0 : groups.hashCode);

  @override
  String toString() => 'ModelList[listID=$listID, listName=$listName, listType=$listType, isCurrentlyFeatured=$isCurrentlyFeatured, sortOrder=$sortOrder, listAbstract=$listAbstract, listExplanation=$listExplanation, listImageURL=$listImageURL, charityNavigatorURL=$charityNavigatorURL, groups=$groups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (listID != null) {
      json[r'listID'] = listID;
    }
    if (listName != null) {
      json[r'listName'] = listName;
    }
    if (listType != null) {
      json[r'listType'] = listType;
    }
    if (isCurrentlyFeatured != null) {
      json[r'isCurrentlyFeatured'] = isCurrentlyFeatured;
    }
    if (sortOrder != null) {
      json[r'sortOrder'] = sortOrder;
    }
    if (listAbstract != null) {
      json[r'listAbstract'] = listAbstract;
    }
    if (listExplanation != null) {
      json[r'listExplanation'] = listExplanation;
    }
    if (listImageURL != null) {
      json[r'listImageURL'] = listImageURL;
    }
    if (charityNavigatorURL != null) {
      json[r'charityNavigatorURL'] = charityNavigatorURL;
    }
    if (groups != null) {
      json[r'groups'] = groups;
    }
    return json;
  }

  /// Returns a new [ModelList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelList fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ModelList(
        listID: mapValueOfType<String>(json, r'listID'),
        listName: mapValueOfType<String>(json, r'listName'),
        listType: mapValueOfType<String>(json, r'listType'),
        isCurrentlyFeatured: mapValueOfType<bool>(json, r'isCurrentlyFeatured'),
        sortOrder: mapValueOfType<int>(json, r'sortOrder'),
        listAbstract: mapValueOfType<String>(json, r'listAbstract'),
        listExplanation: mapValueOfType<String>(json, r'listExplanation'),
        listImageURL: mapValueOfType<String>(json, r'listImageURL'),
        charityNavigatorURL: mapValueOfType<String>(json, r'charityNavigatorURL'),
        groups: OrganizationGroup.listFromJson(json[r'groups']),
      );
    }
    return null;
  }

  static List<ModelList> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ModelList.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ModelList>[];

  static Map<String, ModelList> mapFromJson(dynamic json) {
    final map = <String, ModelList>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ModelList.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ModelList-objects as value to a dart map
  static Map<String, List<ModelList>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ModelList>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ModelList.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

