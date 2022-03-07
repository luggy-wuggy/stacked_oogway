# openapi.model.RatingObject

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ratingID** | **String** | Unique identifier for this Rating. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") | [optional] 
**score** | **num** | Overall score, out of a possible 100, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") | [optional] 
**rating** | **int** | Overall rating, on a four-star scale, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") | [optional] 
**publicationDate** | [**DateTime**](DateTime.md) | Date the Rating was published ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") <br/> | [optional] 
**referenceOrganization** | [**OrganizationLink**](OrganizationLink.md) |  | [optional] 
**includedOrganizations** | [**List<OrganizationLink>**](OrganizationLink.md) | All organizations to which the rating applies. In most cases, a rating will apply to a single organization, and in that case primaryOrganization will be the only member of the includedOrganizationsList.  A rating for a composite organization will include multiple individual organizations, each with a distinct EIN. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") | [default to const []]
**ratingImage** | [**IconSet**](IconSet.md) |  | [optional] 
**form990** | [**Form990**](Form990.md) |  | [optional] 
**financialRating** | [**FinancialRating**](FinancialRating.md) |  | [optional] 
**accountabilityRating** | [**AccountabilityRating**](AccountabilityRating.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


