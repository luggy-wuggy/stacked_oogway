//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationCollectionCurrentRating {
  /// Returns a new [OrganizationCollectionCurrentRating] instance.
  OrganizationCollectionCurrentRating({
    this.ratingID,
    this.score,
    this.rating,
    this.publicationDate,
    this.financialRating,
    this.accountabilityRating,
    this.ratingImage,
    this.form990,
  });

  /// Unique identifier for this Rating. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  String ratingID;

  /// Overall score, out of a possible 100, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num score;

  /// Overall rating, on a four-star scale, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\")
  int rating;

  /// Date the Rating was published ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") <br/>
  DateTime publicationDate;

  OrganizationCollectionCurrentRatingFinancialRating financialRating;

  OrganizationCollectionCurrentRatingAccountabilityRating accountabilityRating;

  IconSet ratingImage;

  Form990 form990;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationCollectionCurrentRating &&
     other.ratingID == ratingID &&
     other.score == score &&
     other.rating == rating &&
     other.publicationDate == publicationDate &&
     other.financialRating == financialRating &&
     other.accountabilityRating == accountabilityRating &&
     other.ratingImage == ratingImage &&
     other.form990 == form990;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (ratingID == null ? 0 : ratingID.hashCode) +
    (score == null ? 0 : score.hashCode) +
    (rating == null ? 0 : rating.hashCode) +
    (publicationDate == null ? 0 : publicationDate.hashCode) +
    (financialRating == null ? 0 : financialRating.hashCode) +
    (accountabilityRating == null ? 0 : accountabilityRating.hashCode) +
    (ratingImage == null ? 0 : ratingImage.hashCode) +
    (form990 == null ? 0 : form990.hashCode);

  @override
  String toString() => 'OrganizationCollectionCurrentRating[ratingID=$ratingID, score=$score, rating=$rating, publicationDate=$publicationDate, financialRating=$financialRating, accountabilityRating=$accountabilityRating, ratingImage=$ratingImage, form990=$form990]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (ratingID != null) {
      json[r'ratingID'] = ratingID;
    }
    if (score != null) {
      json[r'score'] = score;
    }
    if (rating != null) {
      json[r'rating'] = rating;
    }
    if (publicationDate != null) {
      json[r'publicationDate'] = _dateFormatter.format(publicationDate.toUtc());
    }
    if (financialRating != null) {
      json[r'financialRating'] = financialRating;
    }
    if (accountabilityRating != null) {
      json[r'accountabilityRating'] = accountabilityRating;
    }
    if (ratingImage != null) {
      json[r'ratingImage'] = ratingImage;
    }
    if (form990 != null) {
      json[r'form990'] = form990;
    }
    return json;
  }

  /// Returns a new [OrganizationCollectionCurrentRating] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationCollectionCurrentRating fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationCollectionCurrentRating(
        ratingID: mapValueOfType<String>(json, r'ratingID'),
        score: json[r'score'] == null
          ? null
          : num.parse(json[r'score'].toString()),
        rating: mapValueOfType<int>(json, r'rating'),
        publicationDate: mapDateTime(json, r'publicationDate', ''),
        financialRating: OrganizationCollectionCurrentRatingFinancialRating.fromJson(json[r'financialRating']),
        accountabilityRating: OrganizationCollectionCurrentRatingAccountabilityRating.fromJson(json[r'accountabilityRating']),
        ratingImage: IconSet.fromJson(json[r'ratingImage']),
        form990: Form990.fromJson(json[r'form990']),
      );
    }
    return null;
  }

  static List<OrganizationCollectionCurrentRating> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationCollectionCurrentRating.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationCollectionCurrentRating>[];

  static Map<String, OrganizationCollectionCurrentRating> mapFromJson(dynamic json) {
    final map = <String, OrganizationCollectionCurrentRating>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationCollectionCurrentRating.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationCollectionCurrentRating-objects as value to a dart map
  static Map<String, List<OrganizationCollectionCurrentRating>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationCollectionCurrentRating>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationCollectionCurrentRating.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

