# openapi.model.IRSClassification

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subsection** | **String** | A subsection in the tax code which defines the category under which an organization may be exempt from taxes. | [optional] 
**foundationStatus** | **String** | IRS classification of type of foundation. This is only applicable to 501(c)(3) Foundations. | [optional] 
**deductibility** | [**DeductibilityType**](DeductibilityType.md) |  | [optional] 
**deductibilityDetail** | **String** | Provides more information when deductibility is NOT_DEDUCTIBLE_GENERALLY, indicating that donations to an organization are not generally deductible. | [optional] 
**deductibilityCode** | **String** | IRS Code to specify whether donations to this organization are tax-deductible. | [optional] 
**nteeCode** | **String** | The IRS's full classification code for the type of work this Organization performs | [optional] 
**nteeClassification** | **String** | The IRS's text description of the work that this Organization performs which corresponds to the full NTEECode | [optional] 
**nteeLetter** | **String** | Within the IRS's classification system, the first letter of the code represents broad subsectors, such as health, education, and youth development, of the charitable organization universe. | [optional] 
**nteeType** | **String** | The IRS's text description of the NTEE Letter portion of this this organizations classification | [optional] 
**nteeSuffix** | **String** | The last and optional character in the IRS classification system | [optional] 
**affiliation** | **String** | affiliation | [optional] 
**groupName** | **String** | groupName | [optional] 
**exemptOrgStatus** | **String** | exemptOrgStatus | [optional] 
**exemptOrgStatusCode** | **String** | exemptOrgStatusCode | [optional] 
**rulingDate** | **String** | rulingDate | [optional] 
**assetAmount** | **String** | assetAmount | [optional] 
**incomeAmount** | **String** | incomeAmount | [optional] 
**latest990** | **String** | latest990 | [optional] 
**filingRequirement** | **String** | filingRequirement | [optional] 
**accountingPeriod** | **String** | accountingPeriod | [optional] 
**classification** | **String** | classification | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


