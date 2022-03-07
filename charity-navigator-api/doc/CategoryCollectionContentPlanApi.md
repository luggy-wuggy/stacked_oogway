# openapi.api.CategoryCollectionContentPlanApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.data.charitynavigator.org/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCategories**](CategoryCollectionContentPlanApi.md#getcategories) | **GET** /Categories | 


# **getCategories**
> List<CategoryCollectionItem> getCategories(appId, appKey)



Returns metadata for Charity Navigator's classification hierarchy for charitable Organizations. Category is the top-level classifier, and each category may contain a number of Causes. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CategoryCollectionContentPlanApi();
final appId = appId_example; // String | 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
final appKey = appKey_example; // String | 3Scale App Key: a secret key to authenticate the assigned App ID.

try {
    final result = api_instance.getCategories(appId, appKey);
    print(result);
} catch (e) {
    print('Exception when calling CategoryCollectionContentPlanApi->getCategories: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal. | 
 **appKey** | **String**| 3Scale App Key: a secret key to authenticate the assigned App ID. | 

### Return type

[**List<CategoryCollectionItem>**](CategoryCollectionItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

