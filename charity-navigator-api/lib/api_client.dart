//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.data.charitynavigator.org/v2'}) {
  }

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Authentication>{};

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  /// Returns an unmodifiable [Map] of the authentications, since none should be added
  /// or deleted.
  Map<String, Authentication> get authentications => Map.unmodifiable(_authentications);

  T getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String nullableContentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = queryParams
      .where((param) => param.value != null)
      .map((param) => '$param');

    final queryString = urlEncodedQueryParams.isNotEmpty
      ? '?${urlEncodedQueryParams.join('&')}'
      : '';

    final uri = Uri.parse('$basePath$path$queryString');

    if (nullableContentType != null) {
      headerParams['Content-Type'] = nullableContentType;
    }

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (nullableContentType == null ||
        !nullableContentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = nullableContentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Socket operation failed: $method $path', e, trace,);
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'TLS/SSL communication failed: $method $path', e, trace,);
    } on IOException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'I/O operation failed: $method $path', e, trace,);
    } on ClientException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'HTTP connection failed: $method $path', e, trace,);
    } on Exception catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Exception occurred: $method $path', e, trace,);
    }

    throw ApiException(HttpStatus.badRequest, 'Invalid HTTP operation: $method $path',);
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable == true);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object value) => value == null ? '' : json.encode(value);

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    for(final authName in authNames) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    }
  }

  static dynamic _deserialize(dynamic value, String targetType, {bool growable}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'AccountabilityRating':
          return AccountabilityRating.fromJson(value);
        case 'AccountabilityTests':
          return AccountabilityTests.fromJson(value);
        case 'ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400':
          return ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400.fromJson(value);
        case 'ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404':
          return ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404.fromJson(value);
        case 'ActiveAdvisoryCollectionItem':
          return ActiveAdvisoryCollectionItem.fromJson(value);
        case 'ActiveAdvisoryCollectionMailingAddress':
          return ActiveAdvisoryCollectionMailingAddress.fromJson(value);
        case 'ActiveAdvisoryCollectionOrganization':
          return ActiveAdvisoryCollectionOrganization.fromJson(value);
        case 'Address':
          return Address.fromJson(value);
        case 'Advisory':
          return Advisory.fromJson(value);
        case 'AdvisoryCollectionGetAdvisoriesResponse400':
          return AdvisoryCollectionGetAdvisoriesResponse400.fromJson(value);
        case 'AdvisoryCollectionGetAdvisoriesResponse404':
          return AdvisoryCollectionGetAdvisoriesResponse404.fromJson(value);
        case 'AdvisoryCollectionItem':
          return AdvisoryCollectionItem.fromJson(value);
        case 'AdvisoryCollectionLink':
          return AdvisoryCollectionLink.fromJson(value);
        case 'AdvisoryObjectGetAdvisoryResponse400':
          return AdvisoryObjectGetAdvisoryResponse400.fromJson(value);
        case 'AdvisoryObjectGetAdvisoryResponse404':
          return AdvisoryObjectGetAdvisoryResponse404.fromJson(value);
        case 'AdvisoryRollup':
          return AdvisoryRollup.fromJson(value);
        case 'AdvisorySource':
          return AdvisorySource.fromJson(value);
        case 'CategoryCollectionCausesItem':
          return CategoryCollectionCausesItem.fromJson(value);
        case 'CategoryCollectionItem':
          return CategoryCollectionItem.fromJson(value);
        case 'DeductibilityType':
          return DeductibilityTypeTypeTransformer().decode(value);
        case 'FinancialRating':
          return FinancialRating.fromJson(value);
        case 'Form990':
          return Form990.fromJson(value);
        case 'IRSClassification':
          return IRSClassification.fromJson(value);
        case 'IconSet':
          return IconSet.fromJson(value);
        case 'ListCollectionGetListsResponse400':
          return ListCollectionGetListsResponse400.fromJson(value);
        case 'ListCollectionGetListsResponse404':
          return ListCollectionGetListsResponse404.fromJson(value);
        case 'ListObjectGetListResponse400':
          return ListObjectGetListResponse400.fromJson(value);
        case 'ListObjectGetListResponse404':
          return ListObjectGetListResponse404.fromJson(value);
        case 'ListObjectLink':
          return ListObjectLink.fromJson(value);
        case 'ModelList':
          return ModelList.fromJson(value);
        case 'OrgListEntry':
          return OrgListEntry.fromJson(value);
        case 'OrganizationCollectionAdvisories':
          return OrganizationCollectionAdvisories.fromJson(value);
        case 'OrganizationCollectionCategory':
          return OrganizationCollectionCategory.fromJson(value);
        case 'OrganizationCollectionCause':
          return OrganizationCollectionCause.fromJson(value);
        case 'OrganizationCollectionCurrentRating':
          return OrganizationCollectionCurrentRating.fromJson(value);
        case 'OrganizationCollectionCurrentRatingAccountabilityRating':
          return OrganizationCollectionCurrentRatingAccountabilityRating.fromJson(value);
        case 'OrganizationCollectionCurrentRatingFinancialRating':
          return OrganizationCollectionCurrentRatingFinancialRating.fromJson(value);
        case 'OrganizationCollectionDonationAddress':
          return OrganizationCollectionDonationAddress.fromJson(value);
        case 'OrganizationCollectionIrsClassification':
          return OrganizationCollectionIrsClassification.fromJson(value);
        case 'OrganizationCollectionItem':
          return OrganizationCollectionItem.fromJson(value);
        case 'OrganizationCollectionMailingAddress':
          return OrganizationCollectionMailingAddress.fromJson(value);
        case 'OrganizationCollectionSearchOrganizationsResponse400':
          return OrganizationCollectionSearchOrganizationsResponse400.fromJson(value);
        case 'OrganizationCollectionSearchOrganizationsResponse404':
          return OrganizationCollectionSearchOrganizationsResponse404.fromJson(value);
        case 'OrganizationGroup':
          return OrganizationGroup.fromJson(value);
        case 'OrganizationLink':
          return OrganizationLink.fromJson(value);
        case 'OrganizationObject':
          return OrganizationObject.fromJson(value);
        case 'OrganizationObjectCategory':
          return OrganizationObjectCategory.fromJson(value);
        case 'OrganizationObjectCause':
          return OrganizationObjectCause.fromJson(value);
        case 'OrganizationObjectGetOrganizationResponse400':
          return OrganizationObjectGetOrganizationResponse400.fromJson(value);
        case 'OrganizationObjectGetOrganizationResponse404':
          return OrganizationObjectGetOrganizationResponse404.fromJson(value);
        case 'PassFailOrNotReported':
          return PassFailOrNotReportedTypeTransformer().decode(value);
        case 'PassFailOrOptOut':
          return PassFailOrOptOutTypeTransformer().decode(value);
        case 'PassFailOrPartial':
          return PassFailOrPartialTypeTransformer().decode(value);
        case 'PassFailOrRemediated':
          return PassFailOrRemediatedTypeTransformer().decode(value);
        case 'PerformanceMetrics':
          return PerformanceMetrics.fromJson(value);
        case 'RatingCollectionGetRatingsResponse400':
          return RatingCollectionGetRatingsResponse400.fromJson(value);
        case 'RatingCollectionGetRatingsResponse404':
          return RatingCollectionGetRatingsResponse404.fromJson(value);
        case 'RatingCollectionLink':
          return RatingCollectionLink.fromJson(value);
        case 'RatingLink':
          return RatingLink.fromJson(value);
        case 'RatingObject':
          return RatingObject.fromJson(value);
        case 'RatingObjectGetRatingResponse400':
          return RatingObjectGetRatingResponse400.fromJson(value);
        case 'RatingObjectGetRatingResponse404':
          return RatingObjectGetRatingResponse404.fromJson(value);
        case 'Representative':
          return Representative.fromJson(value);
        case 'Severity':
          return SeverityTypeTransformer().decode(value);
        default:
          Match match;
          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, targetType, growable: growable))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, targetType, growable: growable))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(v, targetType, growable: growable)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    @required this.json,
    @required this.targetType,
    this.growable,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable == true,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object value) async => value == null ? '' : json.encode(value);
