# openapi.model.ModelList

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**listID** | **String** | Unique ID for the list, assigned by Charity Navigator. | [optional] 
**listName** | **String** | Name of the list. | [optional] 
**listType** | **String** | A general classification of the list. | [optional] 
**isCurrentlyFeatured** | **bool** | Boolean field, true is list is currently featured on site. | [optional] 
**sortOrder** | **int** | If list is currently featured, the sort order it is currently displayed in. | [optional] 
**listAbstract** | **String** | Short list description. | [optional] 
**listExplanation** | **String** | Long list description. | [optional] 
**listImageURL** | **String** | URL for an image representing the List. | [optional] 
**charityNavigatorURL** | **String** | URL to the List page on Charity Navigator's website. | [optional] 
**groups** | [**List<OrganizationGroup>**](OrganizationGroup.md) | Groups of organizations within the list. May be a single, unnamed group in the case of a flat list. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


