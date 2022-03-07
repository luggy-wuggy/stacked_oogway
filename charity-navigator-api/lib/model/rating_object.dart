//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RatingObject {
  /// Returns a new [RatingObject] instance.
  RatingObject({
    this.ratingID,
    this.score,
    this.rating,
    this.publicationDate,
    this.referenceOrganization,
    this.includedOrganizations = const [],
    this.ratingImage,
    this.form990,
    this.financialRating,
    this.accountabilityRating,
  });

  /// Unique identifier for this Rating. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  String ratingID;

  /// Overall score, out of a possible 100, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num score;

  /// Overall rating, on a four-star scale, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\")
  int rating;

  /// Date the Rating was published ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") <br/>
  DateTime publicationDate;

  OrganizationLink referenceOrganization;

  /// All organizations to which the rating applies. In most cases, a rating will apply to a single organization, and in that case primaryOrganization will be the only member of the includedOrganizationsList.  A rating for a composite organization will include multiple individual organizations, each with a distinct EIN. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  List<OrganizationLink> includedOrganizations;

  IconSet ratingImage;

  Form990 form990;

  FinancialRating financialRating;

  AccountabilityRating accountabilityRating;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RatingObject &&
     other.ratingID == ratingID &&
     other.score == score &&
     other.rating == rating &&
     other.publicationDate == publicationDate &&
     other.referenceOrganization == referenceOrganization &&
     other.includedOrganizations == includedOrganizations &&
     other.ratingImage == ratingImage &&
     other.form990 == form990 &&
     other.financialRating == financialRating &&
     other.accountabilityRating == accountabilityRating;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (ratingID == null ? 0 : ratingID.hashCode) +
    (score == null ? 0 : score.hashCode) +
    (rating == null ? 0 : rating.hashCode) +
    (publicationDate == null ? 0 : publicationDate.hashCode) +
    (referenceOrganization == null ? 0 : referenceOrganization.hashCode) +
    (includedOrganizations == null ? 0 : includedOrganizations.hashCode) +
    (ratingImage == null ? 0 : ratingImage.hashCode) +
    (form990 == null ? 0 : form990.hashCode) +
    (financialRating == null ? 0 : financialRating.hashCode) +
    (accountabilityRating == null ? 0 : accountabilityRating.hashCode);

  @override
  String toString() => 'RatingObject[ratingID=$ratingID, score=$score, rating=$rating, publicationDate=$publicationDate, referenceOrganization=$referenceOrganization, includedOrganizations=$includedOrganizations, ratingImage=$ratingImage, form990=$form990, financialRating=$financialRating, accountabilityRating=$accountabilityRating]';

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
    if (referenceOrganization != null) {
      json[r'referenceOrganization'] = referenceOrganization;
    }
      json[r'includedOrganizations'] = includedOrganizations;
    if (ratingImage != null) {
      json[r'ratingImage'] = ratingImage;
    }
    if (form990 != null) {
      json[r'form990'] = form990;
    }
    if (financialRating != null) {
      json[r'financialRating'] = financialRating;
    }
    if (accountabilityRating != null) {
      json[r'accountabilityRating'] = accountabilityRating;
    }
    return json;
  }

  /// Returns a new [RatingObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RatingObject fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RatingObject(
        ratingID: mapValueOfType<String>(json, r'ratingID'),
        score: json[r'score'] == null
          ? null
          : num.parse(json[r'score'].toString()),
        rating: mapValueOfType<int>(json, r'rating'),
        publicationDate: mapDateTime(json, r'publicationDate', ''),
        referenceOrganization: OrganizationLink.fromJson(json[r'referenceOrganization']),
        includedOrganizations: OrganizationLink.listFromJson(json[r'includedOrganizations']),
        ratingImage: IconSet.fromJson(json[r'ratingImage']),
        form990: Form990.fromJson(json[r'form990']),
        financialRating: FinancialRating.fromJson(json[r'financialRating']),
        accountabilityRating: AccountabilityRating.fromJson(json[r'accountabilityRating']),
      );
    }
    return null;
  }

  static List<RatingObject> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RatingObject.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RatingObject>[];

  static Map<String, RatingObject> mapFromJson(dynamic json) {
    final map = <String, RatingObject>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RatingObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RatingObject-objects as value to a dart map
  static Map<String, List<RatingObject>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RatingObject>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RatingObject.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

