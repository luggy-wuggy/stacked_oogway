//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for RatingObject
void main() {
  final instance = RatingObject();

  group('test RatingObject', () {
    // Unique identifier for this Rating. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    // String ratingID
    test('to test the property `ratingID`', () async {
      // TODO
    });

    // Overall score, out of a possible 100, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    // num score
    test('to test the property `score`', () async {
      // TODO
    });

    // Overall rating, on a four-star scale, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\")
    // int rating
    test('to test the property `rating`', () async {
      // TODO
    });

    // Date the Rating was published ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") <br/>
    // DateTime publicationDate
    test('to test the property `publicationDate`', () async {
      // TODO
    });

    // OrganizationLink referenceOrganization
    test('to test the property `referenceOrganization`', () async {
      // TODO
    });

    // All organizations to which the rating applies. In most cases, a rating will apply to a single organization, and in that case primaryOrganization will be the only member of the includedOrganizationsList.  A rating for a composite organization will include multiple individual organizations, each with a distinct EIN. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    // List<OrganizationLink> includedOrganizations (default value: const [])
    test('to test the property `includedOrganizations`', () async {
      // TODO
    });

    // IconSet ratingImage
    test('to test the property `ratingImage`', () async {
      // TODO
    });

    // Form990 form990
    test('to test the property `form990`', () async {
      // TODO
    });

    // FinancialRating financialRating
    test('to test the property `financialRating`', () async {
      // TODO
    });

    // AccountabilityRating accountabilityRating
    test('to test the property `accountabilityRating`', () async {
      // TODO
    });


  });

}
