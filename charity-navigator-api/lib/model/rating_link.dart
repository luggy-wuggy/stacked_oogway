//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RatingLink {
  /// Returns a new [RatingLink] instance.
  RatingLink({
    this.ratingID,
    this.score,
    this.rating,
    this.publicationDate,
    this.ratingImage,
    this.form990,
    this.links = const {},
  });

  /// Unique identifier for this Rating. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  String ratingID;

  /// Overall score, out of a possible 100, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num score;

  /// Overall rating, on a four-star scale, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\")
  int rating;

  /// Date the Rating was published ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") <br/>
  DateTime publicationDate;

  IconSet ratingImage;

  Form990 form990;

  /// A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
  Map<String, Object> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RatingLink &&
     other.ratingID == ratingID &&
     other.score == score &&
     other.rating == rating &&
     other.publicationDate == publicationDate &&
     other.ratingImage == ratingImage &&
     other.form990 == form990 &&
     other.links == links;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (ratingID == null ? 0 : ratingID.hashCode) +
    (score == null ? 0 : score.hashCode) +
    (rating == null ? 0 : rating.hashCode) +
    (publicationDate == null ? 0 : publicationDate.hashCode) +
    (ratingImage == null ? 0 : ratingImage.hashCode) +
    (form990 == null ? 0 : form990.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'RatingLink[ratingID=$ratingID, score=$score, rating=$rating, publicationDate=$publicationDate, ratingImage=$ratingImage, form990=$form990, links=$links]';

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
    if (ratingImage != null) {
      json[r'ratingImage'] = ratingImage;
    }
    if (form990 != null) {
      json[r'form990'] = form990;
    }
      json[r'_links'] = links;
    return json;
  }

  /// Returns a new [RatingLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RatingLink fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RatingLink(
        ratingID: mapValueOfType<String>(json, r'ratingID'),
        score: json[r'score'] == null
          ? null
          : num.parse(json[r'score'].toString()),
        rating: mapValueOfType<int>(json, r'rating'),
        publicationDate: mapDateTime(json, r'publicationDate', ''),
        ratingImage: IconSet.fromJson(json[r'ratingImage']),
        form990: Form990.fromJson(json[r'form990']),
        links: mapValueOfType<Map<String, Object>>(json, r'_links'),
      );
    }
    return null;
  }

  static List<RatingLink> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RatingLink.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RatingLink>[];

  static Map<String, RatingLink> mapFromJson(dynamic json) {
    final map = <String, RatingLink>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RatingLink.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RatingLink-objects as value to a dart map
  static Map<String, List<RatingLink>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RatingLink>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RatingLink.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

