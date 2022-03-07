//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Enum for reporting of privacy tests within the accountability and transparency scoring system.
class PassFailOrOptOut {
  /// Instantiate a new enum with the provided [value].
  const PassFailOrOptOut._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const pass = PassFailOrOptOut._(r'Pass');
  static const fail = PassFailOrOptOut._(r'Fail');
  static const optOut = PassFailOrOptOut._(r'Opt-Out');

  /// List of all possible values in this [enum][PassFailOrOptOut].
  static const values = <PassFailOrOptOut>[
    pass,
    fail,
    optOut,
  ];

  static PassFailOrOptOut fromJson(dynamic value) =>
    PassFailOrOptOutTypeTransformer().decode(value);

  static List<PassFailOrOptOut> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PassFailOrOptOut.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PassFailOrOptOut>[];
}

/// Transformation class that can [encode] an instance of [PassFailOrOptOut] to String,
/// and [decode] dynamic data back to [PassFailOrOptOut].
class PassFailOrOptOutTypeTransformer {
  factory PassFailOrOptOutTypeTransformer() => _instance ??= const PassFailOrOptOutTypeTransformer._();

  const PassFailOrOptOutTypeTransformer._();

  String encode(PassFailOrOptOut data) => data.value;

  /// Decodes a [dynamic value][data] to a PassFailOrOptOut.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PassFailOrOptOut decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Pass': return PassFailOrOptOut.pass;
        case r'Fail': return PassFailOrOptOut.fail;
        case r'Opt-Out': return PassFailOrOptOut.optOut;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PassFailOrOptOutTypeTransformer] instance.
  static PassFailOrOptOutTypeTransformer _instance;
}

