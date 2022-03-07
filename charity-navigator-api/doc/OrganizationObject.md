# openapi.model.OrganizationObject

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
**phoneNumber** | **String** | Main phone number of the organization. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") | [optional] 
**generalEmail** | **String** | General email address for the organization. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") | [optional] 
**category** | [**OrganizationObjectCategory**](OrganizationObjectCategory.md) |  | [optional] 
**cause** | [**OrganizationObjectCause**](OrganizationObjectCause.md) |  | [optional] 
**irsClassification** | [**IRSClassification**](IRSClassification.md) |  | [optional] 
**mailingAddress** | [**Address**](Address.md) |  | [optional] 
**donationAddress** | [**Address**](Address.md) |  | [optional] 
**activeAdvisories** | [**AdvisoryCollectionLink**](AdvisoryCollectionLink.md) |  | [optional] 
**removedAdvisories** | [**AdvisoryCollectionLink**](AdvisoryCollectionLink.md) |  | [optional] 
**currentBoardChair** | [**Representative**](Representative.md) |  | [optional] 
**currentCEO** | [**Representative**](Representative.md) |  | [optional] 
**currentRating** | [**RatingLink**](RatingLink.md) |  | [optional] 
**ratingHistory** | [**RatingCollectionLink**](RatingCollectionLink.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


