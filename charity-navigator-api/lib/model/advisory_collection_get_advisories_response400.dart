//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdvisoryCollectionGetAdvisoriesResponse400 {
  /// Returns a new [AdvisoryCollectionGetAdvisoriesResponse400] instance.
  AdvisoryCollectionGetAdvisoriesResponse400({
    this.errorMessage,
  });

  String errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdvisoryCollectionGetAdvisoriesResponse400 &&
     other.errorMessage == errorMessage;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (errorMessage == null ? 0 : errorMessage.hashCode);

  @override
  String toString() => 'AdvisoryCollectionGetAdvisoriesResponse400[errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (errorMessage != null) {
      json[r'errorMessage'] = errorMessage;
    }
    return json;
  }

  /// Returns a new [AdvisoryCollectionGetAdvisoriesResponse400] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdvisoryCollectionGetAdvisoriesResponse400 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AdvisoryCollectionGetAdvisoriesResponse400(
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
      );
    }
    return null;
  }

  static List<AdvisoryCollectionGetAdvisoriesResponse400> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AdvisoryCollectionGetAdvisoriesResponse400.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AdvisoryCollectionGetAdvisoriesResponse400>[];

  static Map<String, AdvisoryCollectionGetAdvisoriesResponse400> mapFromJson(dynamic json) {
    final map = <String, AdvisoryCollectionGetAdvisoriesResponse400>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AdvisoryCollectionGetAdvisoriesResponse400.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AdvisoryCollectionGetAdvisoriesResponse400-objects as value to a dart map
  static Map<String, List<AdvisoryCollectionGetAdvisoriesResponse400>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AdvisoryCollectionGetAdvisoriesResponse400>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AdvisoryCollectionGetAdvisoriesResponse400.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

