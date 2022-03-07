//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Enum for reporting of the material diversion of assets test, and potentially for similar tests, within the accountability and transparency scoring system.
class PassFailOrRemediated {
  /// Instantiate a new enum with the provided [value].
  const PassFailOrRemediated._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const pass = PassFailOrRemediated._(r'Pass');
  static const fail = PassFailOrRemediated._(r'Fail');
  static const remediated = PassFailOrRemediated._(r'Remediated');
  static const notReported = PassFailOrRemediated._(r'Not Reported');

  /// List of all possible values in this [enum][PassFailOrRemediated].
  static const values = <PassFailOrRemediated>[
    pass,
    fail,
    remediated,
    notReported,
  ];

  static PassFailOrRemediated fromJson(dynamic value) =>
    PassFailOrRemediatedTypeTransformer().decode(value);

  static List<PassFailOrRemediated> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PassFailOrRemediated.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PassFailOrRemediated>[];
}

/// Transformation class that can [encode] an instance of [PassFailOrRemediated] to String,
/// and [decode] dynamic data back to [PassFailOrRemediated].
class PassFailOrRemediatedTypeTransformer {
  factory PassFailOrRemediatedTypeTransformer() => _instance ??= const PassFailOrRemediatedTypeTransformer._();

  const PassFailOrRemediatedTypeTransformer._();

  String encode(PassFailOrRemediated data) => data.value;

  /// Decodes a [dynamic value][data] to a PassFailOrRemediated.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PassFailOrRemediated decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Pass': return PassFailOrRemediated.pass;
        case r'Fail': return PassFailOrRemediated.fail;
        case r'Remediated': return PassFailOrRemediated.remediated;
        case r'Not Reported': return PassFailOrRemediated.notReported;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PassFailOrRemediatedTypeTransformer] instance.
  static PassFailOrRemediatedTypeTransformer _instance;
}

