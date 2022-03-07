//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RatingObjectContentPlanApi {
  RatingObjectContentPlanApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve a single Rating object for an Organization. Each rating is listed once, under its primary `referenceOrganization`. Note that the rating may apply to other organizations, and this is represented by `includedOrganizations`, which is a collection of hyperlinks to all of the organizations to which the rating applies. The rating is a point-in-time assessment provided by Charity Navigator, along with related metrics and ratios taken from financial statements for a fiscal year, on which the rating is based. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ein (required):
  ///
  /// * [String] ratingID (required):
  ///
  /// * [String] appId (required):
  ///   3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///
  /// * [String] appKey (required):
  ///   3Scale App Key: a secret key to authenticate the assigned App ID.
  Future<Response> getRatingWithHttpInfo(String ein, String ratingID, String appId, String appKey,) async {
    // Verify required params are set.
    if (ein == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: ein');
    }
    if (ratingID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: ratingID');
    }
    if (appId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appId');
    }
    if (appKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appKey');
    }

    // ignore: prefer_const_declarations
    final path = r'/Organizations/{ein}/Ratings/{RatingID}'
      .replaceAll('{ein}', ein)
      .replaceAll('{RatingID}', ratingID);

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

  /// Retrieve a single Rating object for an Organization. Each rating is listed once, under its primary `referenceOrganization`. Note that the rating may apply to other organizations, and this is represented by `includedOrganizations`, which is a collection of hyperlinks to all of the organizations to which the rating applies. The rating is a point-in-time assessment provided by Charity Navigator, along with related metrics and ratios taken from financial statements for a fiscal year, on which the rating is based. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
  ///
  /// Parameters:
  ///
  /// * [String] ein (required):
  ///
  /// * [String] ratingID (required):
  ///
  /// * [String] appId (required):
  ///   3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///
  /// * [String] appKey (required):
  ///   3Scale App Key: a secret key to authenticate the assigned App ID.
  Future<RatingObject> getRating(String ein, String ratingID, String appId, String appKey,) async {
    final response = await getRatingWithHttpInfo(ein, ratingID, appId, appKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RatingObject',) as RatingObject;
    
    }
    return Future<RatingObject>.value();
  }
}
