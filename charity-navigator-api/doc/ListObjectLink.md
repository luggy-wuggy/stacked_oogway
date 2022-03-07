# openapi.model.ListObjectLink

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**Map<String, Object>**](Object.md) | A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values).  | [default to const {}]
**listID** | **String** | Unique ID for the list, assigned by Charity Navigator. | [optional] 
**listType** | **String** | A general classification of the list. | [optional] 
**listName** | **String** | Name of the list. | [optional] 
**listAbstract** | **String** | Short list description. | [optional] 
**listImageURL** | **String** | URL for an image representing the List. | [optional] 
**isCurrentlyFeatured** | **bool** | Boolean field, true is list is currently featured on site. | [optional] 
**sortOrder** | **int** | If list is currently featured, the sort order it is currently displayed in. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


