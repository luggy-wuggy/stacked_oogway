//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Form990 {
  /// Returns a new [Form990] instance.
  Form990({
    this.fundraisingExpenses,
    this.administrativeExpenses,
    this.programExpenses,
    this.totalExpenses,
    this.totalRevenue,
    this.totalNetAssets,
    this.totalContributions,
    this.primaryRevenue,
    this.otherRevenue,
    this.ceoCompensationPercent,
  });

  /// Fundraising expenses as reported on the income statement for the rating period. This measure reflects what a charity spends to raise money. Fundraising expenses can include campaign printing, publicity, mailing, and staffing and costs incurred in soliciting donations, memberships, and grants. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Fundraising%20Expenses&mid=2&cid=21&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num fundraisingExpenses;

  /// Administrative expenses as reported on the income statement for the rating period. This measure reflects what percent of its total budget a charity spends on overhead, administrative staff and associated costs, and organizational meetings. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Administrative%20Expenses&mid=3&cid=21&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num administrativeExpenses;

  /// Program expenses as reported on the income statement for the rating period. This measure reflects what a charity spends to raise money. Fundraising expenses can include campaign printing, publicity, mailing, and staffing and costs incurred in soliciting donations, memberships, and grants. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Program%20Expenses&mid=7&cid=21&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num programExpenses;

  /// Total functional expenses, computed as the sum of program expenses, administrative expenses and fundraising expenses, as reported on the income statement for the rating period. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num totalExpenses;

  /// Total revenue, as reported on the income statement for the rating period. Charities can derive revenue or funding from a variety of sources, including contributions, program services, membership dues, interest on savings, investment income, special events, and sales of inventory. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num totalRevenue;

  /// Total net assets, computed as he difference between assets and liabilities, as reported on the organization's financial statement for the rating period. Although charities do not exist to make money, they do work to build and maintain reasonable reserves of net assets. Growing its net assets helps a charity outpace inflation and sustain future program activities. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Net%20Assets&print=1) <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num totalNetAssets;

  /// Total contributions is the sum of all contributions - including gifts, and grants, federated campaigns, membership dues, fundraising events, related organizations, and government grants. ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num totalContributions;

  /// The revenue a charity generates as a result of the work it does. A charity's primary revenue includes grants and contributions, revenue produced from programs and services, and membership fees and dues. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&gid=10&print=1) <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num primaryRevenue;

  /// In addition to primary revenue sources, charities derive revenue from investments, rents, special events, sales of inventory, and other unrelated business income. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Other%20Revenue&print=1) <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num otherRevenue;

  /// Based on the data found in each charity's most recently filed Form 990, we include salary, cash bonuses, and expense accounts when we measure a CEO's compensation. We do not include contributions to benefit plans or deferred compensation that is allocated to be paid in later years. Deferred compensation is often accrued over many years and then is paid as a lump sum in one year. As such, we do include deferred compensation as part of the compensation figure in the year in which it is actually paid out to the employee and/or when it is expensed per the 990. Many charities use fiscal years that differ from the calendar year. In these cases, it is important to recognize that the CEO’s compensation reported on the Form 990 reflects the CEO’s pay for the calendar year, not the fiscal year. Why? Because the IRS requires that charities report compensation on the Form 990 exactly the same as they did on the W-2 Form (which is based on the calendar year). Many donors are understandably interested in how much the leaders of charities earn. This information is public record so Charity Navigator reports it for our users. This information does not factor into an organization's Charity Navigator rating. We provide this percentage so donors can quickly put the salary into perspective. For comparative purposes, a charity with total expenses of $20 million, which compensates its highest paid executive at $200,000 per year (or 1%) would appear to have tighter control on expenses than the $1 million organization which pays its chief executive the same amount (or 20% of expenses for one person). [Learn More](https://www.charitynavigator.org/index.cfm/bay/glossary.word/word/Leadership%20Compensation%20and%20Other%20Salaries%20of%20Note%20as%20a%20Percentage%20of%20Total%20Expenses/print/1.htm) <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  num ceoCompensationPercent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Form990 &&
     other.fundraisingExpenses == fundraisingExpenses &&
     other.administrativeExpenses == administrativeExpenses &&
     other.programExpenses == programExpenses &&
     other.totalExpenses == totalExpenses &&
     other.totalRevenue == totalRevenue &&
     other.totalNetAssets == totalNetAssets &&
     other.totalContributions == totalContributions &&
     other.primaryRevenue == primaryRevenue &&
     other.otherRevenue == otherRevenue &&
     other.ceoCompensationPercent == ceoCompensationPercent;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (fundraisingExpenses == null ? 0 : fundraisingExpenses.hashCode) +
    (administrativeExpenses == null ? 0 : administrativeExpenses.hashCode) +
    (programExpenses == null ? 0 : programExpenses.hashCode) +
    (totalExpenses == null ? 0 : totalExpenses.hashCode) +
    (totalRevenue == null ? 0 : totalRevenue.hashCode) +
    (totalNetAssets == null ? 0 : totalNetAssets.hashCode) +
    (totalContributions == null ? 0 : totalContributions.hashCode) +
    (primaryRevenue == null ? 0 : primaryRevenue.hashCode) +
    (otherRevenue == null ? 0 : otherRevenue.hashCode) +
    (ceoCompensationPercent == null ? 0 : ceoCompensationPercent.hashCode);

  @override
  String toString() => 'Form990[fundraisingExpenses=$fundraisingExpenses, administrativeExpenses=$administrativeExpenses, programExpenses=$programExpenses, totalExpenses=$totalExpenses, totalRevenue=$totalRevenue, totalNetAssets=$totalNetAssets, totalContributions=$totalContributions, primaryRevenue=$primaryRevenue, otherRevenue=$otherRevenue, ceoCompensationPercent=$ceoCompensationPercent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fundraisingExpenses != null) {
      json[r'fundraisingExpenses'] = fundraisingExpenses;
    }
    if (administrativeExpenses != null) {
      json[r'administrativeExpenses'] = administrativeExpenses;
    }
    if (programExpenses != null) {
      json[r'programExpenses'] = programExpenses;
    }
    if (totalExpenses != null) {
      json[r'totalExpenses'] = totalExpenses;
    }
    if (totalRevenue != null) {
      json[r'totalRevenue'] = totalRevenue;
    }
    if (totalNetAssets != null) {
      json[r'totalNetAssets'] = totalNetAssets;
    }
    if (totalContributions != null) {
      json[r'totalContributions'] = totalContributions;
    }
    if (primaryRevenue != null) {
      json[r'primaryRevenue'] = primaryRevenue;
    }
    if (otherRevenue != null) {
      json[r'otherRevenue'] = otherRevenue;
    }
    if (ceoCompensationPercent != null) {
      json[r'ceoCompensationPercent'] = ceoCompensationPercent;
    }
    return json;
  }

  /// Returns a new [Form990] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Form990 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Form990(
        fundraisingExpenses: json[r'fundraisingExpenses'] == null
          ? null
          : num.parse(json[r'fundraisingExpenses'].toString()),
        administrativeExpenses: json[r'administrativeExpenses'] == null
          ? null
          : num.parse(json[r'administrativeExpenses'].toString()),
        programExpenses: json[r'programExpenses'] == null
          ? null
          : num.parse(json[r'programExpenses'].toString()),
        totalExpenses: json[r'totalExpenses'] == null
          ? null
          : num.parse(json[r'totalExpenses'].toString()),
        totalRevenue: json[r'totalRevenue'] == null
          ? null
          : num.parse(json[r'totalRevenue'].toString()),
        totalNetAssets: json[r'totalNetAssets'] == null
          ? null
          : num.parse(json[r'totalNetAssets'].toString()),
        totalContributions: json[r'totalContributions'] == null
          ? null
          : num.parse(json[r'totalContributions'].toString()),
        primaryRevenue: json[r'primaryRevenue'] == null
          ? null
          : num.parse(json[r'primaryRevenue'].toString()),
        otherRevenue: json[r'otherRevenue'] == null
          ? null
          : num.parse(json[r'otherRevenue'].toString()),
        ceoCompensationPercent: json[r'ceoCompensationPercent'] == null
          ? null
          : num.parse(json[r'ceoCompensationPercent'].toString()),
      );
    }
    return null;
  }

  static List<Form990> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Form990.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Form990>[];

  static Map<String, Form990> mapFromJson(dynamic json) {
    final map = <String, Form990>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Form990.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Form990-objects as value to a dart map
  static Map<String, List<Form990>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Form990>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Form990.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

