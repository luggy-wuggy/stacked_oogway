//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Enum for reporting of accountability and transparency tests that have a partial or equivocal value. Each test property should describe the criteria for passing and partial values.
class PassFailOrPartial {
  /// Instantiate a new enum with the provided [value].
  const PassFailOrPartial._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const pass = PassFailOrPartial._(r'Pass');
  static const fail = PassFailOrPartial._(r'Fail');
  static const partial = PassFailOrPartial._(r'Partial');
  static const notReported = PassFailOrPartial._(r'Not Reported');

  /// List of all possible values in this [enum][PassFailOrPartial].
  static const values = <PassFailOrPartial>[
    pass,
    fail,
    partial,
    notReported,
  ];

  static PassFailOrPartial fromJson(dynamic value) =>
    PassFailOrPartialTypeTransformer().decode(value);

  static List<PassFailOrPartial> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PassFailOrPartial.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PassFailOrPartial>[];
}

/// Transformation class that can [encode] an instance of [PassFailOrPartial] to String,
/// and [decode] dynamic data back to [PassFailOrPartial].
class PassFailOrPartialTypeTransformer {
  factory PassFailOrPartialTypeTransformer() => _instance ??= const PassFailOrPartialTypeTransformer._();

  const PassFailOrPartialTypeTransformer._();

  String encode(PassFailOrPartial data) => data.value;

  /// Decodes a [dynamic value][data] to a PassFailOrPartial.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PassFailOrPartial decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Pass': return PassFailOrPartial.pass;
        case r'Fail': return PassFailOrPartial.fail;
        case r'Partial': return PassFailOrPartial.partial;
        case r'Not Reported': return PassFailOrPartial.notReported;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PassFailOrPartialTypeTransformer] instance.
  static PassFailOrPartialTypeTransformer _instance;
}

