//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationCollectionCategory {
  /// Returns a new [OrganizationCollectionCategory] instance.
  OrganizationCollectionCategory({
    this.categoryID,
    this.categoryName,
  });

  /// Charity Navigator's unique identifier for the category.
  String categoryID;

  /// Name of the category.
  String categoryName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationCollectionCategory &&
     other.categoryID == categoryID &&
     other.categoryName == categoryName;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (categoryID == null ? 0 : categoryID.hashCode) +
    (categoryName == null ? 0 : categoryName.hashCode);

  @override
  String toString() => 'OrganizationCollectionCategory[categoryID=$categoryID, categoryName=$categoryName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (categoryID != null) {
      json[r'categoryID'] = categoryID;
    }
    if (categoryName != null) {
      json[r'categoryName'] = categoryName;
    }
    return json;
  }

  /// Returns a new [OrganizationCollectionCategory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationCollectionCategory fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationCollectionCategory(
        categoryID: mapValueOfType<String>(json, r'categoryID'),
        categoryName: mapValueOfType<String>(json, r'categoryName'),
      );
    }
    return null;
  }

  static List<OrganizationCollectionCategory> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationCollectionCategory.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationCollectionCategory>[];

  static Map<String, OrganizationCollectionCategory> mapFromJson(dynamic json) {
    final map = <String, OrganizationCollectionCategory>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationCollectionCategory.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationCollectionCategory-objects as value to a dart map
  static Map<String, List<OrganizationCollectionCategory>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationCollectionCategory>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationCollectionCategory.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

