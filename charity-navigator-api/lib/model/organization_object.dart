//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationObject {
  /// Returns a new [OrganizationObject] instance.
  OrganizationObject({
    @required this.ein,
    this.orgID,
    this.charityName,
    this.tagLine,
    this.websiteURL,
    this.charityNavigatorURL,
    this.mission,
    this.phoneNumber,
    this.generalEmail,
    this.category,
    this.cause,
    this.irsClassification,
    this.mailingAddress,
    this.donationAddress,
    this.activeAdvisories,
    this.removedAdvisories,
    this.currentBoardChair,
    this.currentCEO,
    this.currentRating,
    this.ratingHistory,
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

  /// Main phone number of the organization. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  String phoneNumber;

  /// General email address for the organization. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  String generalEmail;

  OrganizationObjectCategory category;

  OrganizationObjectCause cause;

  IRSClassification irsClassification;

  Address mailingAddress;

  Address donationAddress;

  AdvisoryCollectionLink activeAdvisories;

  AdvisoryCollectionLink removedAdvisories;

  Representative currentBoardChair;

  Representative currentCEO;

  RatingLink currentRating;

  RatingCollectionLink ratingHistory;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationObject &&
     other.ein == ein &&
     other.orgID == orgID &&
     other.charityName == charityName &&
     other.tagLine == tagLine &&
     other.websiteURL == websiteURL &&
     other.charityNavigatorURL == charityNavigatorURL &&
     other.mission == mission &&
     other.phoneNumber == phoneNumber &&
     other.generalEmail == generalEmail &&
     other.category == category &&
     other.cause == cause &&
     other.irsClassification == irsClassification &&
     other.mailingAddress == mailingAddress &&
     other.donationAddress == donationAddress &&
     other.activeAdvisories == activeAdvisories &&
     other.removedAdvisories == removedAdvisories &&
     other.currentBoardChair == currentBoardChair &&
     other.currentCEO == currentCEO &&
     other.currentRating == currentRating &&
     other.ratingHistory == ratingHistory;

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
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (generalEmail == null ? 0 : generalEmail.hashCode) +
    (category == null ? 0 : category.hashCode) +
    (cause == null ? 0 : cause.hashCode) +
    (irsClassification == null ? 0 : irsClassification.hashCode) +
    (mailingAddress == null ? 0 : mailingAddress.hashCode) +
    (donationAddress == null ? 0 : donationAddress.hashCode) +
    (activeAdvisories == null ? 0 : activeAdvisories.hashCode) +
    (removedAdvisories == null ? 0 : removedAdvisories.hashCode) +
    (currentBoardChair == null ? 0 : currentBoardChair.hashCode) +
    (currentCEO == null ? 0 : currentCEO.hashCode) +
    (currentRating == null ? 0 : currentRating.hashCode) +
    (ratingHistory == null ? 0 : ratingHistory.hashCode);

  @override
  String toString() => 'OrganizationObject[ein=$ein, orgID=$orgID, charityName=$charityName, tagLine=$tagLine, websiteURL=$websiteURL, charityNavigatorURL=$charityNavigatorURL, mission=$mission, phoneNumber=$phoneNumber, generalEmail=$generalEmail, category=$category, cause=$cause, irsClassification=$irsClassification, mailingAddress=$mailingAddress, donationAddress=$donationAddress, activeAdvisories=$activeAdvisories, removedAdvisories=$removedAdvisories, currentBoardChair=$currentBoardChair, currentCEO=$currentCEO, currentRating=$currentRating, ratingHistory=$ratingHistory]';

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
    if (phoneNumber != null) {
      json[r'phoneNumber'] = phoneNumber;
    }
    if (generalEmail != null) {
      json[r'generalEmail'] = generalEmail;
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
    if (activeAdvisories != null) {
      json[r'activeAdvisories'] = activeAdvisories;
    }
    if (removedAdvisories != null) {
      json[r'removedAdvisories'] = removedAdvisories;
    }
    if (currentBoardChair != null) {
      json[r'currentBoardChair'] = currentBoardChair;
    }
    if (currentCEO != null) {
      json[r'currentCEO'] = currentCEO;
    }
    if (currentRating != null) {
      json[r'currentRating'] = currentRating;
    }
    if (ratingHistory != null) {
      json[r'ratingHistory'] = ratingHistory;
    }
    return json;
  }

  /// Returns a new [OrganizationObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationObject fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrganizationObject(
        ein: mapValueOfType<String>(json, r'ein'),
        orgID: mapValueOfType<int>(json, r'orgID'),
        charityName: mapValueOfType<String>(json, r'charityName'),
        tagLine: mapValueOfType<String>(json, r'tagLine'),
        websiteURL: mapValueOfType<String>(json, r'websiteURL'),
        charityNavigatorURL: mapValueOfType<String>(json, r'charityNavigatorURL'),
        mission: mapValueOfType<String>(json, r'mission'),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        generalEmail: mapValueOfType<String>(json, r'generalEmail'),
        category: OrganizationObjectCategory.fromJson(json[r'category']),
        cause: OrganizationObjectCause.fromJson(json[r'cause']),
        irsClassification: IRSClassification.fromJson(json[r'irsClassification']),
        mailingAddress: Address.fromJson(json[r'mailingAddress']),
        donationAddress: Address.fromJson(json[r'donationAddress']),
        activeAdvisories: AdvisoryCollectionLink.fromJson(json[r'activeAdvisories']),
        removedAdvisories: AdvisoryCollectionLink.fromJson(json[r'removedAdvisories']),
        currentBoardChair: Representative.fromJson(json[r'currentBoardChair']),
        currentCEO: Representative.fromJson(json[r'currentCEO']),
        currentRating: RatingLink.fromJson(json[r'currentRating']),
        ratingHistory: RatingCollectionLink.fromJson(json[r'ratingHistory']),
      );
    }
    return null;
  }

  static List<OrganizationObject> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationObject.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationObject>[];

  static Map<String, OrganizationObject> mapFromJson(dynamic json) {
    final map = <String, OrganizationObject>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationObject-objects as value to a dart map
  static Map<String, List<OrganizationObject>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationObject>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationObject.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

