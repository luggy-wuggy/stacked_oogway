//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrganizationObjectApi {
  OrganizationObjectApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve full detail of a single Organization. This is a composite set of information describing an organization that may engage in charitable work. Normally the Organization data structure includes a single legal entity, though legal entity information may be excluded in exceptional cases.
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
  Future<Response> getOrganizationWithHttpInfo(String ein, String appId, String appKey,) async {
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
    final path = r'/Organizations/{ein}'
      .replaceAll('{ein}', ein);

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

  /// Retrieve full detail of a single Organization. This is a composite set of information describing an organization that may engage in charitable work. Normally the Organization data structure includes a single legal entity, though legal entity information may be excluded in exceptional cases.
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
  Future<OrganizationObject> getOrganization(String ein, String appId, String appKey,) async {
    final response = await getOrganizationWithHttpInfo(ein, appId, appKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrganizationObject',) as OrganizationObject;
    
    }
    return Future<OrganizationObject>.value();
  }
}
