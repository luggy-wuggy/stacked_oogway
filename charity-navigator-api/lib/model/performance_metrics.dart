//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PerformanceMetrics {
  /// Returns a new [PerformanceMetrics] instance.
  PerformanceMetrics({
    this.fundraisingEfficiency,
    this.fundraisingExpensesRatio,
    this.programExpensesGrowth,
    this.programExpensesRatio,
    this.administrationExpensesRatio,
    this.liabilitiesToAssetsRatio,
    this.workingCapitalRatio,
    this.primaryRevenueGrowth,
  });

  /// The amount spent to raise $1 in charitable contributions. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Fundraising%20Efficiency&mid=1&cid=12&print=1*) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num fundraisingEfficiency;

  /// This measure reflects what a charity spends to raise money. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Fundraising%20Expenses&mid=2&cid=12) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num fundraisingExpensesRatio;

  /// Average annual growth of organization's program expenses. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Program%20Expenses%20Growth&mid=6&cid=12&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num programExpensesGrowth;

  /// The percent of its total expenses a charity spends on the programs and services it exists to deliver. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Program%20Expenses&mid=7&cid=21&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num programExpensesRatio;

  /// This measure reflects what percent of its total budget a charity spends on overhead, administrative staff and associated costs, and organizational meetings. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Administrative%20Expenses&mid=3&cid=12&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num administrationExpensesRatio;

  /// Liabilities to Assets is an indicator of an organization’s solvency and or long term sustainability. This ratio is computed by dividing a charity's total liabilities by its total assets. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Liabilities%20to%20Assets&mid=10&cid=16&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num liabilitiesToAssetsRatio;

  /// Determines how long a charity could sustain its level of spending using its net available assets, or working capital, as reported on its most recently filed Form 990. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Working%20Capital%20Ratio&mid=4&cid=12&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num workingCapitalRatio;

  /// Prior to CN2.1 Ratings looked at Primary Revenue Growth for an Organization in addition to Program Expense Growth.  For CN2.1 Ratings this is no longer considered and will be null <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num primaryRevenueGrowth;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PerformanceMetrics &&
     other.fundraisingEfficiency == fundraisingEfficiency &&
     other.fundraisingExpensesRatio == fundraisingExpensesRatio &&
     other.programExpensesGrowth == programExpensesGrowth &&
     other.programExpensesRatio == programExpensesRatio &&
     other.administrationExpensesRatio == administrationExpensesRatio &&
     other.liabilitiesToAssetsRatio == liabilitiesToAssetsRatio &&
     other.workingCapitalRatio == workingCapitalRatio &&
     other.primaryRevenueGrowth == primaryRevenueGrowth;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (fundraisingEfficiency == null ? 0 : fundraisingEfficiency.hashCode) +
    (fundraisingExpensesRatio == null ? 0 : fundraisingExpensesRatio.hashCode) +
    (programExpensesGrowth == null ? 0 : programExpensesGrowth.hashCode) +
    (programExpensesRatio == null ? 0 : programExpensesRatio.hashCode) +
    (administrationExpensesRatio == null ? 0 : administrationExpensesRatio.hashCode) +
    (liabilitiesToAssetsRatio == null ? 0 : liabilitiesToAssetsRatio.hashCode) +
    (workingCapitalRatio == null ? 0 : workingCapitalRatio.hashCode) +
    (primaryRevenueGrowth == null ? 0 : primaryRevenueGrowth.hashCode);

  @override
  String toString() => 'PerformanceMetrics[fundraisingEfficiency=$fundraisingEfficiency, fundraisingExpensesRatio=$fundraisingExpensesRatio, programExpensesGrowth=$programExpensesGrowth, programExpensesRatio=$programExpensesRatio, administrationExpensesRatio=$administrationExpensesRatio, liabilitiesToAssetsRatio=$liabilitiesToAssetsRatio, workingCapitalRatio=$workingCapitalRatio, primaryRevenueGrowth=$primaryRevenueGrowth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fundraisingEfficiency != null) {
      json[r'fundraisingEfficiency'] = fundraisingEfficiency;
    }
    if (fundraisingExpensesRatio != null) {
      json[r'fundraisingExpensesRatio'] = fundraisingExpensesRatio;
    }
    if (programExpensesGrowth != null) {
      json[r'programExpensesGrowth'] = programExpensesGrowth;
    }
    if (programExpensesRatio != null) {
      json[r'programExpensesRatio'] = programExpensesRatio;
    }
    if (administrationExpensesRatio != null) {
      json[r'administrationExpensesRatio'] = administrationExpensesRatio;
    }
    if (liabilitiesToAssetsRatio != null) {
      json[r'liabilitiesToAssetsRatio'] = liabilitiesToAssetsRatio;
    }
    if (workingCapitalRatio != null) {
      json[r'workingCapitalRatio'] = workingCapitalRatio;
    }
    if (primaryRevenueGrowth != null) {
      json[r'primaryRevenueGrowth'] = primaryRevenueGrowth;
    }
    return json;
  }

  /// Returns a new [PerformanceMetrics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PerformanceMetrics fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PerformanceMetrics(
        fundraisingEfficiency: json[r'fundraisingEfficiency'] == null
          ? null
          : num.parse(json[r'fundraisingEfficiency'].toString()),
        fundraisingExpensesRatio: json[r'fundraisingExpensesRatio'] == null
          ? null
          : num.parse(json[r'fundraisingExpensesRatio'].toString()),
        programExpensesGrowth: json[r'programExpensesGrowth'] == null
          ? null
          : num.parse(json[r'programExpensesGrowth'].toString()),
        programExpensesRatio: json[r'programExpensesRatio'] == null
          ? null
          : num.parse(json[r'programExpensesRatio'].toString()),
        administrationExpensesRatio: json[r'administrationExpensesRatio'] == null
          ? null
          : num.parse(json[r'administrationExpensesRatio'].toString()),
        liabilitiesToAssetsRatio: json[r'liabilitiesToAssetsRatio'] == null
          ? null
          : num.parse(json[r'liabilitiesToAssetsRatio'].toString()),
        workingCapitalRatio: json[r'workingCapitalRatio'] == null
          ? null
          : num.parse(json[r'workingCapitalRatio'].toString()),
        primaryRevenueGrowth: json[r'primaryRevenueGrowth'] == null
          ? null
          : num.parse(json[r'primaryRevenueGrowth'].toString()),
      );
    }
    return null;
  }

  static List<PerformanceMetrics> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PerformanceMetrics.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PerformanceMetrics>[];

  static Map<String, PerformanceMetrics> mapFromJson(dynamic json) {
    final map = <String, PerformanceMetrics>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PerformanceMetrics.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PerformanceMetrics-objects as value to a dart map
  static Map<String, List<PerformanceMetrics>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PerformanceMetrics>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PerformanceMetrics.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

