//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListCollectionGetListsResponse400 {
  /// Returns a new [ListCollectionGetListsResponse400] instance.
  ListCollectionGetListsResponse400({
    this.errorMessage,
  });

  String errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListCollectionGetListsResponse400 &&
     other.errorMessage == errorMessage;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (errorMessage == null ? 0 : errorMessage.hashCode);

  @override
  String toString() => 'ListCollectionGetListsResponse400[errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (errorMessage != null) {
      json[r'errorMessage'] = errorMessage;
    }
    return json;
  }

  /// Returns a new [ListCollectionGetListsResponse400] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListCollectionGetListsResponse400 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListCollectionGetListsResponse400(
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
      );
    }
    return null;
  }

  static List<ListCollectionGetListsResponse400> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListCollectionGetListsResponse400.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListCollectionGetListsResponse400>[];

  static Map<String, ListCollectionGetListsResponse400> mapFromJson(dynamic json) {
    final map = <String, ListCollectionGetListsResponse400>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListCollectionGetListsResponse400.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListCollectionGetListsResponse400-objects as value to a dart map
  static Map<String, List<ListCollectionGetListsResponse400>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListCollectionGetListsResponse400>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListCollectionGetListsResponse400.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

