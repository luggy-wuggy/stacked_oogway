//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Enum for reporting of most accountability and transparency tests. The documentation for each metric should describe the criteria for a passing value.
class PassFailOrNotReported {
  /// Instantiate a new enum with the provided [value].
  const PassFailOrNotReported._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const pass = PassFailOrNotReported._(r'Pass');
  static const fail = PassFailOrNotReported._(r'Fail');
  static const notReported = PassFailOrNotReported._(r'Not Reported');

  /// List of all possible values in this [enum][PassFailOrNotReported].
  static const values = <PassFailOrNotReported>[
    pass,
    fail,
    notReported,
  ];

  static PassFailOrNotReported fromJson(dynamic value) =>
    PassFailOrNotReportedTypeTransformer().decode(value);

  static List<PassFailOrNotReported> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PassFailOrNotReported.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PassFailOrNotReported>[];
}

/// Transformation class that can [encode] an instance of [PassFailOrNotReported] to String,
/// and [decode] dynamic data back to [PassFailOrNotReported].
class PassFailOrNotReportedTypeTransformer {
  factory PassFailOrNotReportedTypeTransformer() => _instance ??= const PassFailOrNotReportedTypeTransformer._();

  const PassFailOrNotReportedTypeTransformer._();

  String encode(PassFailOrNotReported data) => data.value;

  /// Decodes a [dynamic value][data] to a PassFailOrNotReported.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PassFailOrNotReported decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Pass': return PassFailOrNotReported.pass;
        case r'Fail': return PassFailOrNotReported.fail;
        case r'Not Reported': return PassFailOrNotReported.notReported;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PassFailOrNotReportedTypeTransformer] instance.
  static PassFailOrNotReportedTypeTransformer _instance;
}

