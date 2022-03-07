//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdvisorySource {
  /// Returns a new [AdvisorySource] instance.
  AdvisorySource({
    this.datePublished,
    this.dateRemoved,
    this.dateModified,
    this.publisher,
    this.url,
    this.summary,
  });

  /// Date when the Advisory Source was published.
  DateTime datePublished;

  /// Date when the Advisory Source was removed.  The Advisory Source can be assumed to ba active if dateRemoved is omitted.
  DateTime dateRemoved;

  /// Date when the Advisory Source was most recently modified.
  DateTime dateModified;

  /// Name of the Advisory Source publisher.
  String publisher;

  /// URL referring to the Advisory Source.
  String url;

  /// A summary description of the Advisory Source.
  String summary;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdvisorySource &&
     other.datePublished == datePublished &&
     other.dateRemoved == dateRemoved &&
     other.dateModified == dateModified &&
     other.publisher == publisher &&
     other.url == url &&
     other.summary == summary;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (datePublished == null ? 0 : datePublished.hashCode) +
    (dateRemoved == null ? 0 : dateRemoved.hashCode) +
    (dateModified == null ? 0 : dateModified.hashCode) +
    (publisher == null ? 0 : publisher.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (summary == null ? 0 : summary.hashCode);

  @override
  String toString() => 'AdvisorySource[datePublished=$datePublished, dateRemoved=$dateRemoved, dateModified=$dateModified, publisher=$publisher, url=$url, summary=$summary]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (datePublished != null) {
      json[r'datePublished'] = _dateFormatter.format(datePublished.toUtc());
    }
    if (dateRemoved != null) {
      json[r'dateRemoved'] = _dateFormatter.format(dateRemoved.toUtc());
    }
    if (dateModified != null) {
      json[r'dateModified'] = _dateFormatter.format(dateModified.toUtc());
    }
    if (publisher != null) {
      json[r'publisher'] = publisher;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (summary != null) {
      json[r'summary'] = summary;
    }
    return json;
  }

  /// Returns a new [AdvisorySource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdvisorySource fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AdvisorySource(
        datePublished: mapDateTime(json, r'datePublished', ''),
        dateRemoved: mapDateTime(json, r'dateRemoved', ''),
        dateModified: mapDateTime(json, r'dateModified', ''),
        publisher: mapValueOfType<String>(json, r'publisher'),
        url: mapValueOfType<String>(json, r'url'),
        summary: mapValueOfType<String>(json, r'summary'),
      );
    }
    return null;
  }

  static List<AdvisorySource> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AdvisorySource.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AdvisorySource>[];

  static Map<String, AdvisorySource> mapFromJson(dynamic json) {
    final map = <String, AdvisorySource>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AdvisorySource.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AdvisorySource-objects as value to a dart map
  static Map<String, List<AdvisorySource>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AdvisorySource>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AdvisorySource.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

