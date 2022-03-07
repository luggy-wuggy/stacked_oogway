//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationObjectCategory {
  /// Returns a new [OrganizationObjectCategory] instance.
  OrganizationObjectCategory({
    this.categoryID,
    this.categoryName,
    this.image,
    this.charityNavigatorURL,
  });

  /// Charity Navigator's unique identifier for the category.
  String categoryID;

  /// Name of the category.
  String categoryName;

  /// URL for an image representing the Category.
  String image;

  /// URL to the Category page on Charity Navigator's website.
  String charityNavigatorURL;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationObjectCategory &&
     other.categoryID == categoryID &&
     other.categoryName == categoryName &&
     other.image == image &&
     other.charityNavigatorURL == charityNavigatorURL;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (categoryID == null ? 0 : categoryID.hashCode) +
    (categoryName == null ? 0 : categoryName.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (charityNavigatorURL == null ? 0 : charityNavigatorURL.hashCode);

  @override
  String toString() => 'OrganizationObjectCategory[categoryID=$categoryID, categoryName=$categoryName, image=$image, charityNavigatorURL=$charityNavigatorURL]';

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
    return json;
  }

  /// Returns a new [OrganizationObjectCategory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationObjectCategory fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationObjectCategory(
        categoryID: mapValueOfType<String>(json, r'categoryID'),
        categoryName: mapValueOfType<String>(json, r'categoryName'),
        image: mapValueOfType<String>(json, r'image'),
        charityNavigatorURL: mapValueOfType<String>(json, r'charityNavigatorURL'),
      );
    }
    return null;
  }

  static List<OrganizationObjectCategory> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationObjectCategory.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationObjectCategory>[];

  static Map<String, OrganizationObjectCategory> mapFromJson(dynamic json) {
    final map = <String, OrganizationObjectCategory>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationObjectCategory.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationObjectCategory-objects as value to a dart map
  static Map<String, List<OrganizationObjectCategory>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationObjectCategory>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationObjectCategory.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

