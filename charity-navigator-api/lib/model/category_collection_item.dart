//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CategoryCollectionItem {
  /// Returns a new [CategoryCollectionItem] instance.
  CategoryCollectionItem({
    this.categoryID,
    this.categoryName,
    this.image,
    this.charityNavigatorURL,
    this.causes = const [],
  });

  /// Charity Navigator's unique identifier for the category.
  String categoryID;

  /// Name of the category.
  String categoryName;

  /// URL for an image representing the Category.
  String image;

  /// URL to the Category page on Charity Navigator's website.
  String charityNavigatorURL;

  /// A list of specific causes, contained within this general category.
  List<CategoryCollectionCausesItem> causes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CategoryCollectionItem &&
     other.categoryID == categoryID &&
     other.categoryName == categoryName &&
     other.image == image &&
     other.charityNavigatorURL == charityNavigatorURL &&
     other.causes == causes;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (categoryID == null ? 0 : categoryID.hashCode) +
    (categoryName == null ? 0 : categoryName.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (charityNavigatorURL == null ? 0 : charityNavigatorURL.hashCode) +
    (causes == null ? 0 : causes.hashCode);

  @override
  String toString() => 'CategoryCollectionItem[categoryID=$categoryID, categoryName=$categoryName, image=$image, charityNavigatorURL=$charityNavigatorURL, causes=$causes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (categoryID != null) {
      json[r'categoryID'] = categoryID;
    }
    if (categoryName != null) {
      json[r'categoryName'] = categoryName;
    }
    if (image != null) {
      json[r'image'] = image;
    }
    if (charityNavigatorURL != null) {
      json[r'charityNavigatorURL'] = charityNavigatorURL;
    }
    if (causes != null) {
      json[r'causes'] = causes;
    }
    return json;
  }

  /// Returns a new [CategoryCollectionItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CategoryCollectionItem fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CategoryCollectionItem(
        categoryID: mapValueOfType<String>(json, r'categoryID'),
        categoryName: mapValueOfType<String>(json, r'categoryName'),
        image: mapValueOfType<String>(json, r'image'),
        charityNavigatorURL: mapValueOfType<String>(json, r'charityNavigatorURL'),
        causes: CategoryCollectionCausesItem.listFromJson(json[r'causes']),
      );
    }
    return null;
  }

  static List<CategoryCollectionItem> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CategoryCollectionItem.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CategoryCollectionItem>[];

  static Map<String, CategoryCollectionItem> mapFromJson(dynamic json) {
    final map = <String, CategoryCollectionItem>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CategoryCollectionItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CategoryCollectionItem-objects as value to a dart map
  static Map<String, List<CategoryCollectionItem>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CategoryCollectionItem>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CategoryCollectionItem.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

