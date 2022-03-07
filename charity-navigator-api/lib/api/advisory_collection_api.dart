//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AdvisoryCollectionApi {
  AdvisoryCollectionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve the full set of Charity Navigator advisories for a specified organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ein (required):
  ///
  /// * [String] appId (required):
  ///   3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///
  /// * [String] appKey (required):
  ///   3Scale App Key: a secret key to authenticate the assigned App ID.
  ///
  /// * [int] pageSize:
  ///   Number of objects to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  ///
  /// * [int] pageNum:
  ///   Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  ///
  /// * [String] status:
  ///   .An optional filter parameter to limit the Advisories returned, based on .status: . .| Status Value | Advisories Included                                 | .| ------------ | --------------------------------------------------- | .| ALL | All advisories included, regardless of status.      | .| ACTIVE       | Includes only advisories that are currently active. | .| REMOVED      | Includes only advisories that have been removed.    | . .Omitting the status property is the equivalent of specifying ALL. Any value .other than the ones listed above will result in an HTTP error 400.
  Future<Response> getAdvisoriesWithHttpInfo(String ein, String appId, String appKey, { int pageSize, int pageNum, String status, }) async {
    // Verify required params are set.
    if (ein == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: ein');
    }
    if (appId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appId');
    }
    if (appKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appKey');
    }

    // ignore: prefer_const_declarations
    final path = r'/Organizations/{ein}/Advisories'
      .replaceAll('{ein}', ein);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'app_id', appId));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'app_key', appKey));
    if (pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageSize', pageSize));
    }
    if (pageNum != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageNum', pageNum));
    }
    if (status != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'status', status));
    }

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

  /// Retrieve the full set of Charity Navigator advisories for a specified organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.
  ///
  /// Parameters:
  ///
  /// * [String] ein (required):
  ///
  /// * [String] appId (required):
  ///   3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///
  /// * [String] appKey (required):
  ///   3Scale App Key: a secret key to authenticate the assigned App ID.
  ///
  /// * [int] pageSize:
  ///   Number of objects to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  ///
  /// * [int] pageNum:
  ///   Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  ///
  /// * [String] status:
  ///   .An optional filter parameter to limit the Advisories returned, based on .status: . .| Status Value | Advisories Included                                 | .| ------------ | --------------------------------------------------- | .| ALL | All advisories included, regardless of status.      | .| ACTIVE       | Includes only advisories that are currently active. | .| REMOVED      | Includes only advisories that have been removed.    | . .Omitting the status property is the equivalent of specifying ALL. Any value .other than the ones listed above will result in an HTTP error 400.
  Future<List<AdvisoryCollectionItem>> getAdvisories(String ein, String appId, String appKey, { int pageSize, int pageNum, String status, }) async {
    final response = await getAdvisoriesWithHttpInfo(ein, appId, appKey,  pageSize: pageSize, pageNum: pageNum, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AdvisoryCollectionItem>') as List)
        .cast<AdvisoryCollectionItem>()
        .toList(growable: false);

    }
    return Future<List<AdvisoryCollectionItem>>.value();
  }
}
