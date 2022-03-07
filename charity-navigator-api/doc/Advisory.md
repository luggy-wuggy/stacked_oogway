# openapi.model.Advisory

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**advisoryID** | **String** | Unique identifier for this advisory. | [optional] 
**severity** | [**Severity**](Severity.md) |  | [optional] 
**datePublished** | [**DateTime**](DateTime.md) | Date when the Advisory was first published. | [optional] 
**dateRemoved** | [**DateTime**](DateTime.md) | Date when the Advisory was removed. Advisory can be assumed to be active if dateRemoved is omitted. | [optional] 
**dateModified** | [**DateTime**](DateTime.md) | Date when the Advisory most recently modified. | [optional] 
**organization** | [**OrganizationLink**](OrganizationLink.md) |  | [optional] 
**sources** | [**List<AdvisorySource>**](AdvisorySource.md) | Ordered list of Advisory Sources | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


