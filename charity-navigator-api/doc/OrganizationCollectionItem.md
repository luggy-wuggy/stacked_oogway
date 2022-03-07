# openapi.model.OrganizationCollectionItem

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ein** | **String** | The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available. | 
**orgID** | **int** | Internal identifier assigned by Charity Navigator. Only rated charities have an orgID. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") | [optional] 
**charityName** | **String** | Name of the charitable organization. | [optional] 
**tagLine** | **String** | Tagline describing the charity. | [optional] 
**websiteURL** | **String** | URL of the organization's website. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") | [optional] 
**charityNavigatorURL** | **String** |  | [optional] 
**mission** | **String** | The organization's mission statement. | [optional] 
**currentRating** | [**OrganizationCollectionCurrentRating**](OrganizationCollectionCurrentRating.md) |  | [optional] 
**category** | [**OrganizationCollectionCategory**](OrganizationCollectionCategory.md) |  | [optional] 
**cause** | [**OrganizationCollectionCause**](OrganizationCollectionCause.md) |  | [optional] 
**irsClassification** | [**OrganizationCollectionIrsClassification**](OrganizationCollectionIrsClassification.md) |  | [optional] 
**mailingAddress** | [**OrganizationCollectionMailingAddress**](OrganizationCollectionMailingAddress.md) |  | [optional] 
**donationAddress** | [**OrganizationCollectionDonationAddress**](OrganizationCollectionDonationAddress.md) |  | [optional] 
**advisories** | [**OrganizationCollectionAdvisories**](OrganizationCollectionAdvisories.md) |  | [optional] 
**organization** | [**OrganizationLink**](OrganizationLink.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


