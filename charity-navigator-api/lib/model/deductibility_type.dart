//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// A value that summarizes deductibilty of donations to an Organization under a given IRS Classification.
class DeductibilityType {
  /// Instantiate a new enum with the provided [value].
  const DeductibilityType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const deductible = DeductibilityType._(r'Deductible');
  static const notDeductible = DeductibilityType._(r'Not Deductible');
  static const notDeductibleCommaGenerally = DeductibilityType._(r'Not Deductible, Generally');

  /// List of all possible values in this [enum][DeductibilityType].
  static const values = <DeductibilityType>[
    deductible,
    notDeductible,
    notDeductibleCommaGenerally,
  ];

  static DeductibilityType fromJson(dynamic value) =>
    DeductibilityTypeTypeTransformer().decode(value);

  static List<DeductibilityType> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DeductibilityType.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DeductibilityType>[];
}

/// Transformation class that can [encode] an instance of [DeductibilityType] to String,
/// and [decode] dynamic data back to [DeductibilityType].
class DeductibilityTypeTypeTransformer {
  factory DeductibilityTypeTypeTransformer() => _instance ??= const DeductibilityTypeTypeTransformer._();

  const DeductibilityTypeTypeTransformer._();

  String encode(DeductibilityType data) => data.value;

  /// Decodes a [dynamic value][data] to a DeductibilityType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeductibilityType decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Deductible': return DeductibilityType.deductible;
        case r'Not Deductible': return DeductibilityType.notDeductible;
        case r'Not Deductible, Generally': return DeductibilityType.notDeductibleCommaGenerally;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeductibilityTypeTypeTransformer] instance.
  static DeductibilityTypeTypeTransformer _instance;
}

