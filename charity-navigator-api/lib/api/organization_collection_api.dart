//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrganizationCollectionApi {
  OrganizationCollectionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve a list of the organizations available in the Charity Navigator Data Store. Allows paged retrieval, simple and advanced searching.
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
  ///
  /// * [int] pageSize:
  ///   Number of organizations to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  ///
  /// * [int] pageNum:
  ///   Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  ///
  /// * [String] search:
  ///   A simple search string that narrows the results to organizations matching the specified search terms. This is a relevance-driven search, not an exact match. Whitespace-separated terms in the search string are combined using AND logic, so adding terms has the effect of narrowing the search. By default, the search looks for matches in all string or text properties. The searchType parameter can change the field values included in the search.
  ///
  /// * [String] searchType:
  ///   .Used in combination with the `search` parameter, specifies the type of .search to be performed. . .| Value     | Search Behavior                       | .| --------- | ------------------------------------- | .| DEFAULT   | Search in all string properties.      | .| NAME_ONLY | Search only in the Organization name. | . .Omitting the searchType parameter has the same effect as specifying \"DEFAULT\". . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [bool] rated:
  ///   .Specifies whether to include only rated charities or unrated charities. By .default, all charities will be returned. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `rated=TRUE`<br/>`rated=1`<br/>`rated` | Return only rated charities. | .| `rated=FALSE`<br/>`rated=0` | Return only unrated charities. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [String] categoryID:
  ///   ID of a Category. Search results will be filtered to include only organizations in the specified category.
  ///
  /// * [String] causeID:
  ///   ID of a Cause. Search results will be filtered to include only organizations in the specified cause.
  ///
  /// * [bool] fundraisingOrgs:
  ///   .Specifies whether to include or exclude organizations flagged by Charity .Navigator as fundraising organizations. By default, all charities will be .returned.<br/> [Learn .More](javascript:openBrWindow('http://www.charitynavigator.org/index.cfm?bay=glossary.word&gid=95&print=1','glossary','scrollbars=yes,width=760,height=400') . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .Note that a charity that has a \"Moderate\" or \"High\" Severity Advisory has its rating superseded by the Advisory .and will not show up with the rated filter on. A rated charity with \"Low\" Severity Advisory is still considered rated .and will still be found with the filter on. . .| Usage | Search Behavior | .| --- | --- | .| `fundraisingOrgs=TRUE`<br/>`fundraisingOrgs=1`<br/>`fundraisingOrgs` | Return only fundraising organizations. | .| `fundraisingOrgs=FALSE`<br/>`fundraisingOrgs=0` | Return only charities that are not fundraising organizations. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [String] state:
  ///   If set to a valid 2-letter state code (not case-sensitive), filters search results to include only organizations in the specified state. An invalid state code will respond with a 400 error.
  ///
  /// * [String] city:
  ///   Filters search results to include only organizations in cities whose names match the specified string. This uses fuzzy matching, and the city name may be given as a partial string.
  ///
  /// * [String] zip:
  ///   Filters search results to include only organizations in the specified zip code.
  ///
  /// * [int] minRating:
  ///   Filters search results to include only organizations with a rating greater than or equal to the specified value. Must be an integer value betwen 0 and 4, inclusive. Must be less than or equal to maxRating, if specified.
  ///
  /// * [int] maxRating:
  ///   Filters search results to include only organizations with a rating less than or equal to the specified value. Must be an integer value betwen 0 and 4, inclusive. Must be greater than or equal to minRating, if specified.
  ///
  /// * [int] sizeRange:
  ///   .Filters search results to include only organizations within a given size .bracket, as measured in annual Total Expenses. possible values include: . .| Value | Range             | .| ----- | ----------------- | .| 1     | Up to $3.5MM      | .| 2     | $3.5MM to $13.5MM | .| 3     | $13.5MM and up    | .
  ///
  /// * [bool] donorPrivacy:
  ///   .Specifies whether to include or exclude organizations that have a donor .privacy policy.  By default, all charities are included, regardless of donor .privacy policy. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `donorPrivacy=TRUE`<br/>`donorPrivacy=1`<br/>`donorPrivacy` | Return only organizations that have a donor privacy policy. | .| `donorPrivacy=FALSE`<br/>`donorPrivacy=0` | Return only organizations that do not have a donor privacy policy. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [int] scopeOfWork:
  ///   Filters search results to include only organizations with a given scope of work. Possible values are \"ALL\" (the default), \"REGIONAL\", \"NATIONAL\", or \"INTERNATIONAL\"
  ///
  /// * [bool] cfcCharities:
  ///   .Specifies whether to include or exclude organizations that are included in .the Combined Federal Campaign, the largest workplace giving campaign in USA. By .default, all organizations are included.<br/> [Learn .More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=CFC&print=1.) . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `cfcCharities=TRUE`<br/>`cfcCharities=1`<br/>`cfcCharities` | Return only CFC charities. | .| `cfcCharities=FALSE`<br/>`cfcCharities=0` | Return only non-CFC charities. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [bool] noGovSupport:
  ///   .Specifies whether to include or exclude organizations that do not receive .government support. By default, all organizations are included. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `noGovSupport=TRUE`<br/>`noGovSupport=1`<br/>`noGovSupport` | Return only charities that do not receive government support. | .| `noGovSupport=FALSE`<br/>`noGovSupport=0` | Return only charities that receive government support. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [String] sort:
  ///   .Specifies how results should be sorted. By default, results are sorted by .increasing `ein` value unless a `search` string is specified, in which case .results are sorted by decreasing relevance to the search string. . .This parameter takes the form of a sort property and an optional direction .indicator, separated by a colon. E.g. `NAME` or `NAME:ASC`. . .Sort property can be any of the following (examples indicate default direction): . .| Property | Example | Sort Behavior | .| ----- | ------- | ------------- | .| `NAME` | `sort=NAME:ASC` | Sort alphabetically by charity name | .| `RATING` | `sort=RATING:DESC` | Sort numerically by overall ratings score. Implies `rated=true`. | .| `RELEVANCE` | `sort=RELEVANCE:DESC` | Sort numerically by search relevance score | . .Currently only one sort property is allowed. . .Any of the following usages will result in an HTTP 400 error response: . .* Sort field is not one of the values listed above. .* Sort direction is provided and is neither `ASC` nor `DESC`. .* Sort field is `RATING` and `rated=false` is also specified. .* Sort field is `RELEVANCE` and the `search` parameter is not specified.
  Future<Response> searchOrganizationsWithHttpInfo(String appId, String appKey, { int pageSize, int pageNum, String search, String searchType, bool rated, String categoryID, String causeID, bool fundraisingOrgs, String state, String city, String zip, int minRating, int maxRating, int sizeRange, bool donorPrivacy, int scopeOfWork, bool cfcCharities, bool noGovSupport, String sort, }) async {
    // Verify required params are set.
    if (appId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appId');
    }
    if (appKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appKey');
    }

    // ignore: prefer_const_declarations
    final path = r'/Organizations';

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
    if (search != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'search', search));
    }
    if (searchType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'searchType', searchType));
    }
    if (rated != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'rated', rated));
    }
    if (categoryID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'categoryID', categoryID));
    }
    if (causeID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'causeID', causeID));
    }
    if (fundraisingOrgs != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'fundraisingOrgs', fundraisingOrgs));
    }
    if (state != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'state', state));
    }
    if (city != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'city', city));
    }
    if (zip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'zip', zip));
    }
    if (minRating != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'minRating', minRating));
    }
    if (maxRating != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'maxRating', maxRating));
    }
    if (sizeRange != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sizeRange', sizeRange));
    }
    if (donorPrivacy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'donorPrivacy', donorPrivacy));
    }
    if (scopeOfWork != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'scopeOfWork', scopeOfWork));
    }
    if (cfcCharities != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'cfcCharities', cfcCharities));
    }
    if (noGovSupport != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'noGovSupport', noGovSupport));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
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

  /// Retrieve a list of the organizations available in the Charity Navigator Data Store. Allows paged retrieval, simple and advanced searching.
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///
  /// * [String] appKey (required):
  ///   3Scale App Key: a secret key to authenticate the assigned App ID.
  ///
  /// * [int] pageSize:
  ///   Number of organizations to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  ///
  /// * [int] pageNum:
  ///   Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  ///
  /// * [String] search:
  ///   A simple search string that narrows the results to organizations matching the specified search terms. This is a relevance-driven search, not an exact match. Whitespace-separated terms in the search string are combined using AND logic, so adding terms has the effect of narrowing the search. By default, the search looks for matches in all string or text properties. The searchType parameter can change the field values included in the search.
  ///
  /// * [String] searchType:
  ///   .Used in combination with the `search` parameter, specifies the type of .search to be performed. . .| Value     | Search Behavior                       | .| --------- | ------------------------------------- | .| DEFAULT   | Search in all string properties.      | .| NAME_ONLY | Search only in the Organization name. | . .Omitting the searchType parameter has the same effect as specifying \"DEFAULT\". . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [bool] rated:
  ///   .Specifies whether to include only rated charities or unrated charities. By .default, all charities will be returned. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `rated=TRUE`<br/>`rated=1`<br/>`rated` | Return only rated charities. | .| `rated=FALSE`<br/>`rated=0` | Return only unrated charities. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [String] categoryID:
  ///   ID of a Category. Search results will be filtered to include only organizations in the specified category.
  ///
  /// * [String] causeID:
  ///   ID of a Cause. Search results will be filtered to include only organizations in the specified cause.
  ///
  /// * [bool] fundraisingOrgs:
  ///   .Specifies whether to include or exclude organizations flagged by Charity .Navigator as fundraising organizations. By default, all charities will be .returned.<br/> [Learn .More](javascript:openBrWindow('http://www.charitynavigator.org/index.cfm?bay=glossary.word&gid=95&print=1','glossary','scrollbars=yes,width=760,height=400') . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .Note that a charity that has a \"Moderate\" or \"High\" Severity Advisory has its rating superseded by the Advisory .and will not show up with the rated filter on. A rated charity with \"Low\" Severity Advisory is still considered rated .and will still be found with the filter on. . .| Usage | Search Behavior | .| --- | --- | .| `fundraisingOrgs=TRUE`<br/>`fundraisingOrgs=1`<br/>`fundraisingOrgs` | Return only fundraising organizations. | .| `fundraisingOrgs=FALSE`<br/>`fundraisingOrgs=0` | Return only charities that are not fundraising organizations. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [String] state:
  ///   If set to a valid 2-letter state code (not case-sensitive), filters search results to include only organizations in the specified state. An invalid state code will respond with a 400 error.
  ///
  /// * [String] city:
  ///   Filters search results to include only organizations in cities whose names match the specified string. This uses fuzzy matching, and the city name may be given as a partial string.
  ///
  /// * [String] zip:
  ///   Filters search results to include only organizations in the specified zip code.
  ///
  /// * [int] minRating:
  ///   Filters search results to include only organizations with a rating greater than or equal to the specified value. Must be an integer value betwen 0 and 4, inclusive. Must be less than or equal to maxRating, if specified.
  ///
  /// * [int] maxRating:
  ///   Filters search results to include only organizations with a rating less than or equal to the specified value. Must be an integer value betwen 0 and 4, inclusive. Must be greater than or equal to minRating, if specified.
  ///
  /// * [int] sizeRange:
  ///   .Filters search results to include only organizations within a given size .bracket, as measured in annual Total Expenses. possible values include: . .| Value | Range             | .| ----- | ----------------- | .| 1     | Up to $3.5MM      | .| 2     | $3.5MM to $13.5MM | .| 3     | $13.5MM and up    | .
  ///
  /// * [bool] donorPrivacy:
  ///   .Specifies whether to include or exclude organizations that have a donor .privacy policy.  By default, all charities are included, regardless of donor .privacy policy. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `donorPrivacy=TRUE`<br/>`donorPrivacy=1`<br/>`donorPrivacy` | Return only organizations that have a donor privacy policy. | .| `donorPrivacy=FALSE`<br/>`donorPrivacy=0` | Return only organizations that do not have a donor privacy policy. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [int] scopeOfWork:
  ///   Filters search results to include only organizations with a given scope of work. Possible values are \"ALL\" (the default), \"REGIONAL\", \"NATIONAL\", or \"INTERNATIONAL\"
  ///
  /// * [bool] cfcCharities:
  ///   .Specifies whether to include or exclude organizations that are included in .the Combined Federal Campaign, the largest workplace giving campaign in USA. By .default, all organizations are included.<br/> [Learn .More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=CFC&print=1.) . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `cfcCharities=TRUE`<br/>`cfcCharities=1`<br/>`cfcCharities` | Return only CFC charities. | .| `cfcCharities=FALSE`<br/>`cfcCharities=0` | Return only non-CFC charities. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [bool] noGovSupport:
  ///   .Specifies whether to include or exclude organizations that do not receive .government support. By default, all organizations are included. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `noGovSupport=TRUE`<br/>`noGovSupport=1`<br/>`noGovSupport` | Return only charities that do not receive government support. | .| `noGovSupport=FALSE`<br/>`noGovSupport=0` | Return only charities that receive government support. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///
  /// * [String] sort:
  ///   .Specifies how results should be sorted. By default, results are sorted by .increasing `ein` value unless a `search` string is specified, in which case .results are sorted by decreasing relevance to the search string. . .This parameter takes the form of a sort property and an optional direction .indicator, separated by a colon. E.g. `NAME` or `NAME:ASC`. . .Sort property can be any of the following (examples indicate default direction): . .| Property | Example | Sort Behavior | .| ----- | ------- | ------------- | .| `NAME` | `sort=NAME:ASC` | Sort alphabetically by charity name | .| `RATING` | `sort=RATING:DESC` | Sort numerically by overall ratings score. Implies `rated=true`. | .| `RELEVANCE` | `sort=RELEVANCE:DESC` | Sort numerically by search relevance score | . .Currently only one sort property is allowed. . .Any of the following usages will result in an HTTP 400 error response: . .* Sort field is not one of the values listed above. .* Sort direction is provided and is neither `ASC` nor `DESC`. .* Sort field is `RATING` and `rated=false` is also specified. .* Sort field is `RELEVANCE` and the `search` parameter is not specified.
  Future<List<OrganizationCollectionItem>> searchOrganizations(String appId, String appKey, { int pageSize, int pageNum, String search, String searchType, bool rated, String categoryID, String causeID, bool fundraisingOrgs, String state, String city, String zip, int minRating, int maxRating, int sizeRange, bool donorPrivacy, int scopeOfWork, bool cfcCharities, bool noGovSupport, String sort, }) async {
    final response = await searchOrganizationsWithHttpInfo(appId, appKey,  pageSize: pageSize, pageNum: pageNum, search: search, searchType: searchType, rated: rated, categoryID: categoryID, causeID: causeID, fundraisingOrgs: fundraisingOrgs, state: state, city: city, zip: zip, minRating: minRating, maxRating: maxRating, sizeRange: sizeRange, donorPrivacy: donorPrivacy, scopeOfWork: scopeOfWork, cfcCharities: cfcCharities, noGovSupport: noGovSupport, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrganizationCollectionItem>') as List)
        .cast<OrganizationCollectionItem>()
        .toList(growable: false);

    }
    return Future<List<OrganizationCollectionItem>>.value();
  }
}
