# openapi.api.ActiveAdvisoryCollectionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.data.charitynavigator.org/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllActiveAdvisories**](ActiveAdvisoryCollectionApi.md#getallactiveadvisories) | **GET** /Advisory | 


# **getAllActiveAdvisories**
> List<ActiveAdvisoryCollectionItem> getAllActiveAdvisories(appId, appKey, pageSize, pageNum)



Retrieve the full set of Charity Navigator advisories for a specified organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ActiveAdvisoryCollectionApi();
final appId = appId_example; // String | 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
final appKey = appKey_example; // String | 3Scale App Key: a secret key to authenticate the assigned App ID.
final pageSize = 56; // int | Number of organizations to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
final pageNum = 56; // int | Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.

try {
    final result = api_instance.getAllActiveAdvisories(appId, appKey, pageSize, pageNum);
    print(result);
} catch (e) {
    print('Exception when calling ActiveAdvisoryCollectionApi->getAllActiveAdvisories: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal. | 
 **appKey** | **String**| 3Scale App Key: a secret key to authenticate the assigned App ID. | 
 **pageSize** | **int**| Number of organizations to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000. | [optional] 
 **pageNum** | **int**| Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error. | [optional] 

### Return type

[**List<ActiveAdvisoryCollectionItem>**](ActiveAdvisoryCollectionItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

