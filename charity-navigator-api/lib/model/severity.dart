//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Enumeration describing three levels of severity.
class Severity {
  /// Instantiate a new enum with the provided [value].
  const Severity._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const high = Severity._(r'High');
  static const moderate = Severity._(r'Moderate');
  static const low = Severity._(r'Low');

  /// List of all possible values in this [enum][Severity].
  static const values = <Severity>[
    high,
    moderate,
    low,
  ];

  static Severity fromJson(dynamic value) =>
    SeverityTypeTransformer().decode(value);

  static List<Severity> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Severity.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Severity>[];
}

/// Transformation class that can [encode] an instance of [Severity] to String,
/// and [decode] dynamic data back to [Severity].
class SeverityTypeTransformer {
  factory SeverityTypeTransformer() => _instance ??= const SeverityTypeTransformer._();

  const SeverityTypeTransformer._();

  String encode(Severity data) => data.value;

  /// Decodes a [dynamic value][data] to a Severity.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Severity decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'High': return Severity.high;
        case r'Moderate': return Severity.moderate;
        case r'Low': return Severity.low;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SeverityTypeTransformer] instance.
  static SeverityTypeTransformer _instance;
}

