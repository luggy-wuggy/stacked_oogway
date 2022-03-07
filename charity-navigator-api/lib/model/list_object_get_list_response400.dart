//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListObjectGetListResponse400 {
  /// Returns a new [ListObjectGetListResponse400] instance.
  ListObjectGetListResponse400({
    this.errorMessage,
  });

  String errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListObjectGetListResponse400 &&
     other.errorMessage == errorMessage;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (errorMessage == null ? 0 : errorMessage.hashCode);

  @override
  String toString() => 'ListObjectGetListResponse400[errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (errorMessage != null) {
      json[r'errorMessage'] = errorMessage;
    }
    return json;
  }

  /// Returns a new [ListObjectGetListResponse400] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListObjectGetListResponse400 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListObjectGetListResponse400(
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
      );
    }
    return null;
  }

  static List<ListObjectGetListResponse400> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListObjectGetListResponse400.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListObjectGetListResponse400>[];

  static Map<String, ListObjectGetListResponse400> mapFromJson(dynamic json) {
    final map = <String, ListObjectGetListResponse400>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListObjectGetListResponse400.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListObjectGetListResponse400-objects as value to a dart map
  static Map<String, List<ListObjectGetListResponse400>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListObjectGetListResponse400>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListObjectGetListResponse400.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

