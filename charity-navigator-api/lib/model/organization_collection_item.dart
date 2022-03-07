//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationCollectionItem {
  /// Returns a new [OrganizationCollectionItem] instance.
  OrganizationCollectionItem({
    @required this.ein,
    this.orgID,
    this.charityName,
    this.tagLine,
    this.websiteURL,
    this.charityNavigatorURL,
    this.mission,
    this.currentRating,
    this.category,
    this.cause,
    this.irsClassification,
    this.mailingAddress,
    this.donationAddress,
    this.advisories,
    @required this.organization,
  });

  /// The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available.
  String ein;

  /// Internal identifier assigned by Charity Navigator. Only rated charities have an orgID. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  int orgID;

  /// Name of the charitable organization.
  String charityName;

  /// Tagline describing the charity.
  String tagLine;

  /// URL of the organization's website. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  String websiteURL;

  String charityNavigatorURL;

  /// The organization's mission statement.
  String mission;

  OrganizationCollectionCurrentRating currentRating;

  OrganizationCollectionCategory category;

  OrganizationCollectionCause cause;

  OrganizationCollectionIrsClassification irsClassification;

  OrganizationCollectionMailingAddress mailingAddress;

  OrganizationCollectionDonationAddress donationAddress;

  OrganizationCollectionAdvisories advisories;

  OrganizationLink organization;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationCollectionItem &&
     other.ein == ein &&
     other.orgID == orgID &&
     other.charityName == charityName &&
     other.tagLine == tagLine &&
     other.websiteURL == websiteURL &&
     other.charityNavigatorURL == charityNavigatorURL &&
     other.mission == mission &&
     other.currentRating == currentRating &&
     other.category == category &&
     other.cause == cause &&
     other.irsClassification == irsClassification &&
     other.mailingAddress == mailingAddress &&
     other.donationAddress == donationAddress &&
     other.advisories == advisories &&
     other.organization == organization;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (ein == null ? 0 : ein.hashCode) +
    (orgID == null ? 0 : orgID.hashCode) +
    (charityName == null ? 0 : charityName.hashCode) +
    (tagLine == null ? 0 : tagLine.hashCode) +
    (websiteURL == null ? 0 : websiteURL.hashCode) +
    (charityNavigatorURL == null ? 0 : charityNavigatorURL.hashCode) +
    (mission == null ? 0 : mission.hashCode) +
    (currentRating == null ? 0 : currentRating.hashCode) +
    (category == null ? 0 : category.hashCode) +
    (cause == null ? 0 : cause.hashCode) +
    (irsClassification == null ? 0 : irsClassification.hashCode) +
    (mailingAddress == null ? 0 : mailingAddress.hashCode) +
    (donationAddress == null ? 0 : donationAddress.hashCode) +
    (advisories == null ? 0 : advisories.hashCode) +
    (organization == null ? 0 : organization.hashCode);

  @override
  String toString() => 'OrganizationCollectionItem[ein=$ein, orgID=$orgID, charityName=$charityName, tagLine=$tagLine, websiteURL=$websiteURL, charityNavigatorURL=$charityNavigatorURL, mission=$mission, currentRating=$currentRating, category=$category, cause=$cause, irsClassification=$irsClassification, mailingAddress=$mailingAddress, donationAddress=$donationAddress, advisories=$advisories, organization=$organization]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ein'] = ein;
    if (orgID != null) {
      json[r'orgID'] = orgID;
    }
    if (charityName != null) {
      json[r'charityName'] = charityName;
    }
    if (tagLine != null) {
      json[r'tagLine'] = tagLine;
    }
    if (websiteURL != null) {
      json[r'websiteURL'] = websiteURL;
    }
    if (charityNavigatorURL != null) {
      json[r'charityNavigatorURL'] = charityNavigatorURL;
    }
    if (mission != null) {
      json[r'mission'] = mission;
    }
    if (currentRating != null) {
      json[r'currentRating'] = currentRating;
    }
    if (category != null) {
      json[r'category'] = category;
    }
    if (cause != null) {
      json[r'cause'] = cause;
    }
    if (irsClassification != null) {
      json[r'irsClassification'] = irsClassification;
    }
    if (mailingAddress != null) {
      json[r'mailingAddress'] = mailingAddress;
    }
    if (donationAddress != null) {
      json[r'donationAddress'] = donationAddress;
    }
    if (advisories != null) {
      json[r'advisories'] = advisories;
    }
      json[r'organization'] = organization;
    return json;
  }

  /// Returns a new [OrganizationCollectionItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationCollectionItem fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationCollectionItem(
        ein: mapValueOfType<String>(json, r'ein'),
        orgID: mapValueOfType<int>(json, r'orgID'),
        charityName: mapValueOfType<String>(json, r'charityName'),
        tagLine: mapValueOfType<String>(json, r'tagLine'),
        websiteURL: mapValueOfType<String>(json, r'websiteURL'),
        charityNavigatorURL: mapValueOfType<String>(json, r'charityNavigatorURL'),
        mission: mapValueOfType<String>(json, r'mission'),
        currentRating: OrganizationCollectionCurrentRating.fromJson(json[r'currentRating']),
        category: OrganizationCollectionCategory.fromJson(json[r'category']),
        cause: OrganizationCollectionCause.fromJson(json[r'cause']),
        irsClassification: OrganizationCollectionIrsClassification.fromJson(json[r'irsClassification']),
        mailingAddress: OrganizationCollectionMailingAddress.fromJson(json[r'mailingAddress']),
        donationAddress: OrganizationCollectionDonationAddress.fromJson(json[r'donationAddress']),
        advisories: OrganizationCollectionAdvisories.fromJson(json[r'advisories']),
        organization: OrganizationLink.fromJson(json[r'organization']),
      );
    }
    return null;
  }

  static List<OrganizationCollectionItem> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationCollectionItem.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationCollectionItem>[];

  static Map<String, OrganizationCollectionItem> mapFromJson(dynamic json) {
    final map = <String, OrganizationCollectionItem>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationCollectionItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationCollectionItem-objects as value to a dart map
  static Map<String, List<OrganizationCollectionItem>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationCollectionItem>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationCollectionItem.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

