//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdvisoryCollectionItem {
  /// Returns a new [AdvisoryCollectionItem] instance.
  AdvisoryCollectionItem({
    this.advisoryID,
    this.severity,
    this.datePublished,
    this.dateRemoved,
    this.dateModified,
    this.organization,
    this.sources = const [],
  });

  /// Unique identifier for this advisory.
  String advisoryID;

  Severity severity;

  /// Date when the Advisory was first published.
  DateTime datePublished;

  /// Date when the Advisory was removed. Advisory can be assumed to be active if dateRemoved is omitted.
  DateTime dateRemoved;

  /// Date when the Advisory most recently modified.
  DateTime dateModified;

  OrganizationLink organization;

  /// Ordered list of Advisory Sources
  List<AdvisorySource> sources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdvisoryCollectionItem &&
     other.advisoryID == advisoryID &&
     other.severity == severity &&
     other.datePublished == datePublished &&
     other.dateRemoved == dateRemoved &&
     other.dateModified == dateModified &&
     other.organization == organization &&
     other.sources == sources;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (advisoryID == null ? 0 : advisoryID.hashCode) +
    (severity == null ? 0 : severity.hashCode) +
    (datePublished == null ? 0 : datePublished.hashCode) +
    (dateRemoved == null ? 0 : dateRemoved.hashCode) +
    (dateModified == null ? 0 : dateModified.hashCode) +
    (organization == null ? 0 : organization.hashCode) +
    (sources == null ? 0 : sources.hashCode);

  @override
  String toString() => 'AdvisoryCollectionItem[advisoryID=$advisoryID, severity=$severity, datePublished=$datePublished, dateRemoved=$dateRemoved, dateModified=$dateModified, organization=$organization, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (advisoryID != null) {
      json[r'advisoryID'] = advisoryID;
    }
    if (severity != null) {
      json[r'severity'] = severity;
    }
    if (datePublished != null) {
      json[r'datePublished'] = _dateFormatter.format(datePublished.toUtc());
    }
    if (dateRemoved != null) {
      json[r'dateRemoved'] = _dateFormatter.format(dateRemoved.toUtc());
    }
    if (dateModified != null) {
      json[r'dateModified'] = _dateFormatter.format(dateModified.toUtc());
    }
    if (organization != null) {
      json[r'organization'] = organization;
    }
      json[r'sources'] = sources;
    return json;
  }

  /// Returns a new [AdvisoryCollectionItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdvisoryCollectionItem fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AdvisoryCollectionItem(
        advisoryID: mapValueOfType<String>(json, r'advisoryID'),
        severity: Severity.fromJson(json[r'severity']),
        datePublished: mapDateTime(json, r'datePublished', ''),
        dateRemoved: mapDateTime(json, r'dateRemoved', ''),
        dateModified: mapDateTime(json, r'dateModified', ''),
        organization: OrganizationLink.fromJson(json[r'organization']),
        sources: AdvisorySource.listFromJson(json[r'sources']),
      );
    }
    return null;
  }

  static List<AdvisoryCollectionItem> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AdvisoryCollectionItem.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AdvisoryCollectionItem>[];

  static Map<String, AdvisoryCollectionItem> mapFromJson(dynamic json) {
    final map = <String, AdvisoryCollectionItem>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AdvisoryCollectionItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AdvisoryCollectionItem-objects as value to a dart map
  static Map<String, List<AdvisoryCollectionItem>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AdvisoryCollectionItem>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AdvisoryCollectionItem.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

