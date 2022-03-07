//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CategoryCollectionContentPlanApi {
  CategoryCollectionContentPlanApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns metadata for Charity Navigator's classification hierarchy for charitable Organizations. Category is the top-level classifier, and each category may contain a number of Causes. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///
  /// * [String] appKey (required):
  ///   3Scale App Key: a secret key to authenticate the assigned App ID.
  Future<Response> getCategoriesWithHttpInfo(String appId, String appKey,) async {
    // Verify required params are set.
    if (appId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appId');
    }
    if (appKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appKey');
    }

    // ignore: prefer_const_declarations
    final path = r'/Categories';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'app_id', appId));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'app_key', appKey));

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Returns metadata for Charity Navigator's classification hierarchy for charitable Organizations. Category is the top-level classifier, and each category may contain a number of Causes. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///
  /// * [String] appKey (required):
  ///   3Scale App Key: a secret key to authenticate the assigned App ID.
  Future<List<CategoryCollectionItem>> getCategories(String appId, String appKey,) async {
    final response = await getCategoriesWithHttpInfo(appId, appKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CategoryCollectionItem>') as List)
        .cast<CategoryCollectionItem>()
        .toList(growable: false);

    }
    return Future<List<CategoryCollectionItem>>.value();
  }
}
