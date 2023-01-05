//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration {
  /// Returns a new [IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration] instance.
  IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration({
    this.borrowingLimitPercent,
    this.lendablePercent,
    this.limitResponse,
    this.nominalConcurrencyShares,
  });

  /// `borrowingLimitPercent`, if present, configures a limit on how many seats this priority level can borrow from other priority levels. The limit is known as this level's BorrowingConcurrencyLimit (BorrowingCL) and is a limit on the total number of seats that this level may borrow at any one time. This field holds the ratio of that limit to the level's nominal concurrency limit. When this field is non-nil, it must hold a non-negative integer and the limit is calculated as follows.  BorrowingCL(i) = round( NominalCL(i) * borrowingLimitPercent(i)/100.0 )  The value of this field can be more than 100, implying that this priority level can borrow a number of seats that is greater than its own nominal concurrency limit (NominalCL). When this field is left `nil`, the limit is effectively infinite.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? borrowingLimitPercent;

  /// `lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed by other priority levels. The value of this field must be between 0 and 100, inclusive, and it defaults to 0. The number of seats that other levels can borrow from this level, known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.  LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lendablePercent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiFlowcontrolV1beta3LimitResponse? limitResponse;

  /// `nominalConcurrencyShares` (NCS) contributes to the computation of the NominalConcurrencyLimit (NominalCL) of this level. This is the number of execution seats available at this priority level. This is used both for requests dispatched from this priority level as well as requests dispatched from other priority levels borrowing seats from this level. The server's concurrency limit (ServerCL) is divided among the Limited priority levels in proportion to their NCS values:  NominalCL(i)  = ceil( ServerCL * NCS(i) / sum_ncs ) sum_ncs = sum[limited priority level k] NCS(k)  Bigger numbers mean a larger nominal concurrency limit, at the expense of every other Limited priority level. This field has a default value of 30.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nominalConcurrencyShares;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration &&
     other.borrowingLimitPercent == borrowingLimitPercent &&
     other.lendablePercent == lendablePercent &&
     other.limitResponse == limitResponse &&
     other.nominalConcurrencyShares == nominalConcurrencyShares;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (borrowingLimitPercent == null ? 0 : borrowingLimitPercent!.hashCode) +
    (lendablePercent == null ? 0 : lendablePercent!.hashCode) +
    (limitResponse == null ? 0 : limitResponse!.hashCode) +
    (nominalConcurrencyShares == null ? 0 : nominalConcurrencyShares!.hashCode);

  @override
  String toString() => 'IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration[borrowingLimitPercent=$borrowingLimitPercent, lendablePercent=$lendablePercent, limitResponse=$limitResponse, nominalConcurrencyShares=$nominalConcurrencyShares]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.borrowingLimitPercent != null) {
      json[r'borrowingLimitPercent'] = this.borrowingLimitPercent;
    } else {
      json[r'borrowingLimitPercent'] = null;
    }
    if (this.lendablePercent != null) {
      json[r'lendablePercent'] = this.lendablePercent;
    } else {
      json[r'lendablePercent'] = null;
    }
    if (this.limitResponse != null) {
      json[r'limitResponse'] = this.limitResponse;
    } else {
      json[r'limitResponse'] = null;
    }
    if (this.nominalConcurrencyShares != null) {
      json[r'nominalConcurrencyShares'] = this.nominalConcurrencyShares;
    } else {
      json[r'nominalConcurrencyShares'] = null;
    }
    return json;
  }

  /// Returns a new [IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration(
        borrowingLimitPercent: mapValueOfType<int>(json, r'borrowingLimitPercent'),
        lendablePercent: mapValueOfType<int>(json, r'lendablePercent'),
        limitResponse: IoK8sApiFlowcontrolV1beta3LimitResponse.fromJson(json[r'limitResponse']),
        nominalConcurrencyShares: mapValueOfType<int>(json, r'nominalConcurrencyShares'),
      );
    }
    return null;
  }

  static List<IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration-objects as value to a dart map
  static Map<String, List<IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

