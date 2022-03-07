//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountabilityTests {
  /// Returns a new [AccountabilityTests] instance.
  AccountabilityTests({
    this.boardListStatus,
    this.staffListStatus,
    this.auditedFinancialStatus,
    this.form990Status,
    this.privacyStatus,
    this.loansToOrFromOfficers,
    this.loansToOfficers,
    this.loansFromOfficers,
    this.materialDiversionOfAssets,
    this.boardMeetingMinutes,
    this.distributes990ToBoard,
    this.conflictOfInterestPolicy,
    this.whistleBlowerPolicy,
    this.recordsRetentionPolicy,
    this.reportsCEOAndSalary,
    this.ceoCompensationProcedure,
    this.compensatesBoard,
    this.independentAudit,
    this.independentBoard,
  });

  PassFailOrNotReported boardListStatus;

  PassFailOrNotReported staffListStatus;

  PassFailOrNotReported auditedFinancialStatus;

  PassFailOrNotReported form990Status;

  PassFailOrOptOut privacyStatus;

  PassFailOrNotReported loansToOrFromOfficers;

  PassFailOrNotReported loansToOfficers;

  PassFailOrNotReported loansFromOfficers;

  PassFailOrRemediated materialDiversionOfAssets;

  PassFailOrNotReported boardMeetingMinutes;

  PassFailOrNotReported distributes990ToBoard;

  PassFailOrNotReported conflictOfInterestPolicy;

  PassFailOrNotReported whistleBlowerPolicy;

  PassFailOrNotReported recordsRetentionPolicy;

  PassFailOrNotReported reportsCEOAndSalary;

  PassFailOrNotReported ceoCompensationProcedure;

  PassFailOrNotReported compensatesBoard;

  PassFailOrPartial independentAudit;

  PassFailOrNotReported independentBoard;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountabilityTests &&
     other.boardListStatus == boardListStatus &&
     other.staffListStatus == staffListStatus &&
     other.auditedFinancialStatus == auditedFinancialStatus &&
     other.form990Status == form990Status &&
     other.privacyStatus == privacyStatus &&
     other.loansToOrFromOfficers == loansToOrFromOfficers &&
     other.loansToOfficers == loansToOfficers &&
     other.loansFromOfficers == loansFromOfficers &&
     other.materialDiversionOfAssets == materialDiversionOfAssets &&
     other.boardMeetingMinutes == boardMeetingMinutes &&
     other.distributes990ToBoard == distributes990ToBoard &&
     other.conflictOfInterestPolicy == conflictOfInterestPolicy &&
     other.whistleBlowerPolicy == whistleBlowerPolicy &&
     other.recordsRetentionPolicy == recordsRetentionPolicy &&
     other.reportsCEOAndSalary == reportsCEOAndSalary &&
     other.ceoCompensationProcedure == ceoCompensationProcedure &&
     other.compensatesBoard == compensatesBoard &&
     other.independentAudit == independentAudit &&
     other.independentBoard == independentBoard;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (boardListStatus == null ? 0 : boardListStatus.hashCode) +
    (staffListStatus == null ? 0 : staffListStatus.hashCode) +
    (auditedFinancialStatus == null ? 0 : auditedFinancialStatus.hashCode) +
    (form990Status == null ? 0 : form990Status.hashCode) +
    (privacyStatus == null ? 0 : privacyStatus.hashCode) +
    (loansToOrFromOfficers == null ? 0 : loansToOrFromOfficers.hashCode) +
    (loansToOfficers == null ? 0 : loansToOfficers.hashCode) +
    (loansFromOfficers == null ? 0 : loansFromOfficers.hashCode) +
    (materialDiversionOfAssets == null ? 0 : materialDiversionOfAssets.hashCode) +
    (boardMeetingMinutes == null ? 0 : boardMeetingMinutes.hashCode) +
    (distributes990ToBoard == null ? 0 : distributes990ToBoard.hashCode) +
    (conflictOfInterestPolicy == null ? 0 : conflictOfInterestPolicy.hashCode) +
    (whistleBlowerPolicy == null ? 0 : whistleBlowerPolicy.hashCode) +
    (recordsRetentionPolicy == null ? 0 : recordsRetentionPolicy.hashCode) +
    (reportsCEOAndSalary == null ? 0 : reportsCEOAndSalary.hashCode) +
    (ceoCompensationProcedure == null ? 0 : ceoCompensationProcedure.hashCode) +
    (compensatesBoard == null ? 0 : compensatesBoard.hashCode) +
    (independentAudit == null ? 0 : independentAudit.hashCode) +
    (independentBoard == null ? 0 : independentBoard.hashCode);

  @override
  String toString() => 'AccountabilityTests[boardListStatus=$boardListStatus, staffListStatus=$staffListStatus, auditedFinancialStatus=$auditedFinancialStatus, form990Status=$form990Status, privacyStatus=$privacyStatus, loansToOrFromOfficers=$loansToOrFromOfficers, loansToOfficers=$loansToOfficers, loansFromOfficers=$loansFromOfficers, materialDiversionOfAssets=$materialDiversionOfAssets, boardMeetingMinutes=$boardMeetingMinutes, distributes990ToBoard=$distributes990ToBoard, conflictOfInterestPolicy=$conflictOfInterestPolicy, whistleBlowerPolicy=$whistleBlowerPolicy, recordsRetentionPolicy=$recordsRetentionPolicy, reportsCEOAndSalary=$reportsCEOAndSalary, ceoCompensationProcedure=$ceoCompensationProcedure, compensatesBoard=$compensatesBoard, independentAudit=$independentAudit, independentBoard=$independentBoard]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (boardListStatus != null) {
      json[r'boardListStatus'] = boardListStatus;
    }
    if (staffListStatus != null) {
      json[r'staffListStatus'] = staffListStatus;
    }
    if (auditedFinancialStatus != null) {
      json[r'auditedFinancialStatus'] = auditedFinancialStatus;
    }
    if (form990Status != null) {
      json[r'form990Status'] = form990Status;
    }
    if (privacyStatus != null) {
      json[r'privacyStatus'] = privacyStatus;
    }
    if (loansToOrFromOfficers != null) {
      json[r'loansToOrFromOfficers'] = loansToOrFromOfficers;
    }
    if (loansToOfficers != null) {
      json[r'loansToOfficers'] = loansToOfficers;
    }
    if (loansFromOfficers != null) {
      json[r'loansFromOfficers'] = loansFromOfficers;
    }
    if (materialDiversionOfAssets != null) {
      json[r'materialDiversionOfAssets'] = materialDiversionOfAssets;
    }
    if (boardMeetingMinutes != null) {
      json[r'boardMeetingMinutes'] = boardMeetingMinutes;
    }
    if (distributes990ToBoard != null) {
      json[r'distributes990ToBoard'] = distributes990ToBoard;
    }
    if (conflictOfInterestPolicy != null) {
      json[r'conflictOfInterestPolicy'] = conflictOfInterestPolicy;
    }
    if (whistleBlowerPolicy != null) {
      json[r'whistleBlowerPolicy'] = whistleBlowerPolicy;
    }
    if (recordsRetentionPolicy != null) {
      json[r'recordsRetentionPolicy'] = recordsRetentionPolicy;
    }
    if (reportsCEOAndSalary != null) {
      json[r'reportsCEOAndSalary'] = reportsCEOAndSalary;
    }
    if (ceoCompensationProcedure != null) {
      json[r'ceoCompensationProcedure'] = ceoCompensationProcedure;
    }
    if (compensatesBoard != null) {
      json[r'compensatesBoard'] = compensatesBoard;
    }
    if (independentAudit != null) {
      json[r'independentAudit'] = independentAudit;
    }
    if (independentBoard != null) {
      json[r'independentBoard'] = independentBoard;
    }
    return json;
  }

  /// Returns a new [AccountabilityTests] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountabilityTests fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountabilityTests(
        boardListStatus: PassFailOrNotReported.fromJson(json[r'boardListStatus']),
        staffListStatus: PassFailOrNotReported.fromJson(json[r'staffListStatus']),
        auditedFinancialStatus: PassFailOrNotReported.fromJson(json[r'auditedFinancialStatus']),
        form990Status: PassFailOrNotReported.fromJson(json[r'form990Status']),
        privacyStatus: PassFailOrOptOut.fromJson(json[r'privacyStatus']),
        loansToOrFromOfficers: PassFailOrNotReported.fromJson(json[r'loansToOrFromOfficers']),
        loansToOfficers: PassFailOrNotReported.fromJson(json[r'loansToOfficers']),
        loansFromOfficers: PassFailOrNotReported.fromJson(json[r'loansFromOfficers']),
        materialDiversionOfAssets: PassFailOrRemediated.fromJson(json[r'materialDiversionOfAssets']),
        boardMeetingMinutes: PassFailOrNotReported.fromJson(json[r'boardMeetingMinutes']),
        distributes990ToBoard: PassFailOrNotReported.fromJson(json[r'distributes990ToBoard']),
        conflictOfInterestPolicy: PassFailOrNotReported.fromJson(json[r'conflictOfInterestPolicy']),
        whistleBlowerPolicy: PassFailOrNotReported.fromJson(json[r'whistleBlowerPolicy']),
        recordsRetentionPolicy: PassFailOrNotReported.fromJson(json[r'recordsRetentionPolicy']),
        reportsCEOAndSalary: PassFailOrNotReported.fromJson(json[r'reportsCEOAndSalary']),
        ceoCompensationProcedure: PassFailOrNotReported.fromJson(json[r'ceoCompensationProcedure']),
        compensatesBoard: PassFailOrNotReported.fromJson(json[r'compensatesBoard']),
        independentAudit: PassFailOrPartial.fromJson(json[r'independentAudit']),
        independentBoard: PassFailOrNotReported.fromJson(json[r'independentBoard']),
      );
    }
    return null;
  }

  static List<AccountabilityTests> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountabilityTests.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountabilityTests>[];

  static Map<String, AccountabilityTests> mapFromJson(dynamic json) {
    final map = <String, AccountabilityTests>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountabilityTests.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountabilityTests-objects as value to a dart map
  static Map<String, List<AccountabilityTests>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountabilityTests>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountabilityTests.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

