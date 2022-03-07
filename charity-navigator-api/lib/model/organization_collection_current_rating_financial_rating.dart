//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationCollectionCurrentRatingFinancialRating {
  /// Returns a new [OrganizationCollectionCurrentRatingFinancialRating] instance.
  OrganizationCollectionCurrentRatingFinancialRating({
    this.score,
    this.rating,
  });

  /// Overall financial score, out of a possible 100, based on a set of individual measures of financial health. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=35) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num score;

  /// Overall financial rating, on a four-star scale. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  int rating;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationCollectionCurrentRatingFinancialRating &&
     other.score == score &&
     other.rating == rating;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (score == null ? 0 : score.hashCode) +
    (rating == null ? 0 : rating.hashCode);

  @override
  String toString() => 'OrganizationCollectionCurrentRatingFinancialRating[score=$score, rating=$rating]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (score != null) {
      json[r'score'] = score;
    }
    if (rating != null) {
      json[r'rating'] = rating;
    }
    return json;
  }

  /// Returns a new [OrganizationCollectionCurrentRatingFinancialRating] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationCollectionCurrentRatingFinancialRating fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationCollectionCurrentRatingFinancialRating(
        score: json[r'score'] == null
          ? null
          : num.parse(json[r'score'].toString()),
        rating: mapValueOfType<int>(json, r'rating'),
      );
    }
    return null;
  }

  static List<OrganizationCollectionCurrentRatingFinancialRating> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationCollectionCurrentRatingFinancialRating.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationCollectionCurrentRatingFinancialRating>[];

  static Map<String, OrganizationCollectionCurrentRatingFinancialRating> mapFromJson(dynamic json) {
    final map = <String, OrganizationCollectionCurrentRatingFinancialRating>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationCollectionCurrentRatingFinancialRating.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationCollectionCurrentRatingFinancialRating-objects as value to a dart map
  static Map<String, List<OrganizationCollectionCurrentRatingFinancialRating>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationCollectionCurrentRatingFinancialRating>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationCollectionCurrentRatingFinancialRating.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

