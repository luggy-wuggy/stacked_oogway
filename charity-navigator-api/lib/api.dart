//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/active_advisory_collection_api.dart';
part 'api/advisory_collection_api.dart';
part 'api/advisory_object_api.dart';
part 'api/category_collection_content_plan_api.dart';
part 'api/list_collection_content_plan_api.dart';
part 'api/list_object_content_plan_api.dart';
part 'api/organization_collection_api.dart';
part 'api/organization_object_api.dart';
part 'api/rating_collection_content_plan_api.dart';
part 'api/rating_object_content_plan_api.dart';

part 'model/accountability_rating.dart';
part 'model/accountability_tests.dart';
part 'model/active_advisory_collection_get_all_active_advisories_response400.dart';
part 'model/active_advisory_collection_get_all_active_advisories_response404.dart';
part 'model/active_advisory_collection_item.dart';
part 'model/active_advisory_collection_mailing_address.dart';
part 'model/active_advisory_collection_organization.dart';
part 'model/address.dart';
part 'model/advisory.dart';
part 'model/advisory_collection_get_advisories_response400.dart';
part 'model/advisory_collection_get_advisories_response404.dart';
part 'model/advisory_collection_item.dart';
part 'model/advisory_collection_link.dart';
part 'model/advisory_object_get_advisory_response400.dart';
part 'model/advisory_object_get_advisory_response404.dart';
part 'model/advisory_rollup.dart';
part 'model/advisory_source.dart';
part 'model/category_collection_causes_item.dart';
part 'model/category_collection_item.dart';
part 'model/deductibility_type.dart';
part 'model/financial_rating.dart';
part 'model/form990.dart';
part 'model/irs_classification.dart';
part 'model/icon_set.dart';
part 'model/list_collection_get_lists_response400.dart';
part 'model/list_collection_get_lists_response404.dart';
part 'model/list_object_get_list_response400.dart';
part 'model/list_object_get_list_response404.dart';
part 'model/list_object_link.dart';
part 'model/model_list.dart';
part 'model/org_list_entry.dart';
part 'model/organization_collection_advisories.dart';
part 'model/organization_collection_category.dart';
part 'model/organization_collection_cause.dart';
part 'model/organization_collection_current_rating.dart';
part 'model/organization_collection_current_rating_accountability_rating.dart';
part 'model/organization_collection_current_rating_financial_rating.dart';
part 'model/organization_collection_donation_address.dart';
part 'model/organization_collection_irs_classification.dart';
part 'model/organization_collection_item.dart';
part 'model/organization_collection_mailing_address.dart';
part 'model/organization_collection_search_organizations_response400.dart';
part 'model/organization_collection_search_organizations_response404.dart';
part 'model/organization_group.dart';
part 'model/organization_link.dart';
part 'model/organization_object.dart';
part 'model/organization_object_category.dart';
part 'model/organization_object_cause.dart';
part 'model/organization_object_get_organization_response400.dart';
part 'model/organization_object_get_organization_response404.dart';
part 'model/pass_fail_or_not_reported.dart';
part 'model/pass_fail_or_opt_out.dart';
part 'model/pass_fail_or_partial.dart';
part 'model/pass_fail_or_remediated.dart';
part 'model/performance_metrics.dart';
part 'model/rating_collection_get_ratings_response400.dart';
part 'model/rating_collection_get_ratings_response404.dart';
part 'model/rating_collection_link.dart';
part 'model/rating_link.dart';
part 'model/rating_object.dart';
part 'model/rating_object_get_rating_response400.dart';
part 'model/rating_object_get_rating_response404.dart';
part 'model/representative.dart';
part 'model/severity.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
