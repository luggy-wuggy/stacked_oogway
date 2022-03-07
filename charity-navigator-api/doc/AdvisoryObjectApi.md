# openapi.api.AdvisoryObjectApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.data.charitynavigator.org/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAdvisory**](AdvisoryObjectApi.md#getadvisory) | **GET** /Organizations/{ein}/Advisories/{AdvisoryID} | 


# **getAdvisory**
> Advisory getAdvisory(ein, advisoryID, appId, appKey)



Retrieve full details of a single Advisory, under a given organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AdvisoryObjectApi();
final ein = ein_example; // String | 
final advisoryID = advisoryID_example; // String | 
final appId = appId_example; // String | 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
final appKey = appKey_example; // String | 3Scale App Key: a secret key to authenticate the assigned App ID.

try {
    final result = api_instance.getAdvisory(ein, advisoryID, appId, appKey);
    print(result);
} catch (e) {
    print('Exception when calling AdvisoryObjectApi->getAdvisory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ein** | **String**|  | 
 **advisoryID** | **String**|  | 
 **appId** | **String**| 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal. | 
 **appKey** | **String**| 3Scale App Key: a secret key to authenticate the assigned App ID. | 

### Return type

[**Advisory**](Advisory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

