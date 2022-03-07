//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AdvisoryObjectApi {
  AdvisoryObjectApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve full details of a single Advisory, under a given organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ein (required):
  ///
  /// * [String] advisoryID (required):
  ///
  /// * [String] appId (required):
  ///   3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///
  /// * [String] appKey (required):
  ///   3Scale App Key: a secret key to authenticate the assigned App ID.
  Future<Response> getAdvisoryWithHttpInfo(String ein, String advisoryID, String appId, String appKey,) async {
    // Verify required params are set.
    if (ein == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: ein');
    }
    if (advisoryID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: advisoryID');
    }
    if (appId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appId');
    }
    if (appKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appKey');
    }

    // ignore: prefer_const_declarations
    final path = r'/Organizations/{ein}/Advisories/{AdvisoryID}'
      .replaceAll('{ein}', ein)
      .replaceAll('{AdvisoryID}', advisoryID);

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

  /// Retrieve full details of a single Advisory, under a given organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.
  ///
  /// Parameters:
  ///
  /// * [String] ein (required):
  ///
  /// * [String] advisoryID (required):
  ///
  /// * [String] appId (required):
  ///   3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///
  /// * [String] appKey (required):
  ///   3Scale App Key: a secret key to authenticate the assigned App ID.
  Future<Advisory> getAdvisory(String ein, String advisoryID, String appId, String appKey,) async {
    final response = await getAdvisoryWithHttpInfo(ein, advisoryID, appId, appKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Advisory',) as Advisory;
    
    }
    return Future<Advisory>.value();
  }
}
