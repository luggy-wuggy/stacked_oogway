//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IRSClassification {
  /// Returns a new [IRSClassification] instance.
  IRSClassification({
    this.subsection,
    this.foundationStatus,
    this.deductibility,
    this.deductibilityDetail,
    this.deductibilityCode,
    this.nteeCode,
    this.nteeClassification,
    this.nteeLetter,
    this.nteeType,
    this.nteeSuffix,
    this.affiliation,
    this.groupName,
    this.exemptOrgStatus,
    this.exemptOrgStatusCode,
    this.rulingDate,
    this.assetAmount,
    this.incomeAmount,
    this.latest990,
    this.filingRequirement,
    this.accountingPeriod,
    this.classification,
  });

  /// A subsection in the tax code which defines the category under which an organization may be exempt from taxes.
  String subsection;

  /// IRS classification of type of foundation. This is only applicable to 501(c)(3) Foundations.
  String foundationStatus;

  DeductibilityType deductibility;

  /// Provides more information when deductibility is NOT_DEDUCTIBLE_GENERALLY, indicating that donations to an organization are not generally deductible.
  String deductibilityDetail;

  /// IRS Code to specify whether donations to this organization are tax-deductible.
  String deductibilityCode;

  /// The IRS's full classification code for the type of work this Organization performs
  String nteeCode;

  /// The IRS's text description of the work that this Organization performs which corresponds to the full NTEECode
  String nteeClassification;

  /// Within the IRS's classification system, the first letter of the code represents broad subsectors, such as health, education, and youth development, of the charitable organization universe.
  String nteeLetter;

  /// The IRS's text description of the NTEE Letter portion of this this organizations classification
  String nteeType;

  /// The last and optional character in the IRS classification system
  String nteeSuffix;

  /// affiliation
  String affiliation;

  /// groupName
  String groupName;

  /// exemptOrgStatus
  String exemptOrgStatus;

  /// exemptOrgStatusCode
  String exemptOrgStatusCode;

  /// rulingDate
  String rulingDate;

  /// assetAmount
  String assetAmount;

  /// incomeAmount
  String incomeAmount;

  /// latest990
  String latest990;

  /// filingRequirement
  String filingRequirement;

  /// accountingPeriod
  String accountingPeriod;

  /// classification
  String classification;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IRSClassification &&
     other.subsection == subsection &&
     other.foundationStatus == foundationStatus &&
     other.deductibility == deductibility &&
     other.deductibilityDetail == deductibilityDetail &&
     other.deductibilityCode == deductibilityCode &&
     other.nteeCode == nteeCode &&
     other.nteeClassification == nteeClassification &&
     other.nteeLetter == nteeLetter &&
     other.nteeType == nteeType &&
     other.nteeSuffix == nteeSuffix &&
     other.affiliation == affiliation &&
     other.groupName == groupName &&
     other.exemptOrgStatus == exemptOrgStatus &&
     other.exemptOrgStatusCode == exemptOrgStatusCode &&
     other.rulingDate == rulingDate &&
     other.assetAmount == assetAmount &&
     other.incomeAmount == incomeAmount &&
     other.latest990 == latest990 &&
     other.filingRequirement == filingRequirement &&
     other.accountingPeriod == accountingPeriod &&
     other.classification == classification;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (subsection == null ? 0 : subsection.hashCode) +
    (foundationStatus == null ? 0 : foundationStatus.hashCode) +
    (deductibility == null ? 0 : deductibility.hashCode) +
    (deductibilityDetail == null ? 0 : deductibilityDetail.hashCode) +
    (deductibilityCode == null ? 0 : deductibilityCode.hashCode) +
    (nteeCode == null ? 0 : nteeCode.hashCode) +
    (nteeClassification == null ? 0 : nteeClassification.hashCode) +
    (nteeLetter == null ? 0 : nteeLetter.hashCode) +
    (nteeType == null ? 0 : nteeType.hashCode) +
    (nteeSuffix == null ? 0 : nteeSuffix.hashCode) +
    (affiliation == null ? 0 : affiliation.hashCode) +
    (groupName == null ? 0 : groupName.hashCode) +
    (exemptOrgStatus == null ? 0 : exemptOrgStatus.hashCode) +
    (exemptOrgStatusCode == null ? 0 : exemptOrgStatusCode.hashCode) +
    (rulingDate == null ? 0 : rulingDate.hashCode) +
    (assetAmount == null ? 0 : assetAmount.hashCode) +
    (incomeAmount == null ? 0 : incomeAmount.hashCode) +
    (latest990 == null ? 0 : latest990.hashCode) +
    (filingRequirement == null ? 0 : filingRequirement.hashCode) +
    (accountingPeriod == null ? 0 : accountingPeriod.hashCode) +
    (classification == null ? 0 : classification.hashCode);

  @override
  String toString() => 'IRSClassification[subsection=$subsection, foundationStatus=$foundationStatus, deductibility=$deductibility, deductibilityDetail=$deductibilityDetail, deductibilityCode=$deductibilityCode, nteeCode=$nteeCode, nteeClassification=$nteeClassification, nteeLetter=$nteeLetter, nteeType=$nteeType, nteeSuffix=$nteeSuffix, affiliation=$affiliation, groupName=$groupName, exemptOrgStatus=$exemptOrgStatus, exemptOrgStatusCode=$exemptOrgStatusCode, rulingDate=$rulingDate, assetAmount=$assetAmount, incomeAmount=$incomeAmount, latest990=$latest990, filingRequirement=$filingRequirement, accountingPeriod=$accountingPeriod, classification=$classification]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (subsection != null) {
      json[r'subsection'] = subsection;
    }
    if (foundationStatus != null) {
      json[r'foundationStatus'] = foundationStatus;
    }
    if (deductibility != null) {
      json[r'deductibility'] = deductibility;
    }
    if (deductibilityDetail != null) {
      json[r'deductibilityDetail'] = deductibilityDetail;
    }
    if (deductibilityCode != null) {
      json[r'deductibilityCode'] = deductibilityCode;
    }
    if (nteeCode != null) {
      json[r'nteeCode'] = nteeCode;
    }
    if (nteeClassification != null) {
      json[r'nteeClassification'] = nteeClassification;
    }
    if (nteeLetter != null) {
      json[r'nteeLetter'] = nteeLetter;
    }
    if (nteeType != null) {
      json[r'nteeType'] = nteeType;
    }
    if (nteeSuffix != null) {
      json[r'nteeSuffix'] = nteeSuffix;
    }
    if (affiliation != null) {
      json[r'affiliation'] = affiliation;
    }
    if (groupName != null) {
      json[r'groupName'] = groupName;
    }
    if (exemptOrgStatus != null) {
      json[r'exemptOrgStatus'] = exemptOrgStatus;
    }
    if (exemptOrgStatusCode != null) {
      json[r'exemptOrgStatusCode'] = exemptOrgStatusCode;
    }
    if (rulingDate != null) {
      json[r'rulingDate'] = rulingDate;
    }
    if (assetAmount != null) {
      json[r'assetAmount'] = assetAmount;
    }
    if (incomeAmount != null) {
      json[r'incomeAmount'] = incomeAmount;
    }
    if (latest990 != null) {
      json[r'latest990'] = latest990;
    }
    if (filingRequirement != null) {
      json[r'filingRequirement'] = filingRequirement;
    }
    if (accountingPeriod != null) {
      json[r'accountingPeriod'] = accountingPeriod;
    }
    if (classification != null) {
      json[r'classification'] = classification;
    }
    return json;
  }

  /// Returns a new [IRSClassification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IRSClassification fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return IRSClassification(
        subsection: mapValueOfType<String>(json, r'subsection'),
        foundationStatus: mapValueOfType<String>(json, r'foundationStatus'),
        deductibility: DeductibilityType.fromJson(json[r'deductibility']),
        deductibilityDetail: mapValueOfType<String>(json, r'deductibilityDetail'),
        deductibilityCode: mapValueOfType<String>(json, r'deductibilityCode'),
        nteeCode: mapValueOfType<String>(json, r'nteeCode'),
        nteeClassification: mapValueOfType<String>(json, r'nteeClassification'),
        nteeLetter: mapValueOfType<String>(json, r'nteeLetter'),
        nteeType: mapValueOfType<String>(json, r'nteeType'),
        nteeSuffix: mapValueOfType<String>(json, r'nteeSuffix'),
        affiliation: mapValueOfType<String>(json, r'affiliation'),
        groupName: mapValueOfType<String>(json, r'groupName'),
        exemptOrgStatus: mapValueOfType<String>(json, r'exemptOrgStatus'),
        exemptOrgStatusCode: mapValueOfType<String>(json, r'exemptOrgStatusCode'),
        rulingDate: mapValueOfType<String>(json, r'rulingDate'),
        assetAmount: mapValueOfType<String>(json, r'assetAmount'),
        incomeAmount: mapValueOfType<String>(json, r'incomeAmount'),
        latest990: mapValueOfType<String>(json, r'latest990'),
        filingRequirement: mapValueOfType<String>(json, r'filingRequirement'),
        accountingPeriod: mapValueOfType<String>(json, r'accountingPeriod'),
        classification: mapValueOfType<String>(json, r'classification'),
      );
    }
    return null;
  }

  static List<IRSClassification> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(IRSClassification.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <IRSClassification>[];

  static Map<String, IRSClassification> mapFromJson(dynamic json) {
    final map = <String, IRSClassification>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = IRSClassification.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IRSClassification-objects as value to a dart map
  static Map<String, List<IRSClassification>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<IRSClassification>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = IRSClassification.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

