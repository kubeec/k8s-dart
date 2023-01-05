//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiResourceV1alpha1ResourceClaimStatus {
  /// Returns a new [IoK8sApiResourceV1alpha1ResourceClaimStatus] instance.
  IoK8sApiResourceV1alpha1ResourceClaimStatus({
    this.allocation,
    this.deallocationRequested,
    this.driverName,
    this.reservedFor = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiResourceV1alpha1AllocationResult? allocation;

  /// DeallocationRequested indicates that a ResourceClaim is to be deallocated.  The driver then must deallocate this claim and reset the field together with clearing the Allocation field.  While DeallocationRequested is set, no new consumers may be added to ReservedFor.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deallocationRequested;

  /// DriverName is a copy of the driver name from the ResourceClass at the time when allocation started.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driverName;

  /// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.  There can be at most 32 such reservations. This may get increased in the future, but not reduced.
  List<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference> reservedFor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiResourceV1alpha1ResourceClaimStatus &&
     other.allocation == allocation &&
     other.deallocationRequested == deallocationRequested &&
     other.driverName == driverName &&
     other.reservedFor == reservedFor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allocation == null ? 0 : allocation!.hashCode) +
    (deallocationRequested == null ? 0 : deallocationRequested!.hashCode) +
    (driverName == null ? 0 : driverName!.hashCode) +
    (reservedFor.hashCode);

  @override
  String toString() => 'IoK8sApiResourceV1alpha1ResourceClaimStatus[allocation=$allocation, deallocationRequested=$deallocationRequested, driverName=$driverName, reservedFor=$reservedFor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.allocation != null) {
      json[r'allocation'] = this.allocation;
    } else {
      json[r'allocation'] = null;
    }
    if (this.deallocationRequested != null) {
      json[r'deallocationRequested'] = this.deallocationRequested;
    } else {
      json[r'deallocationRequested'] = null;
    }
    if (this.driverName != null) {
      json[r'driverName'] = this.driverName;
    } else {
      json[r'driverName'] = null;
    }
      json[r'reservedFor'] = this.reservedFor;
    return json;
  }

  /// Returns a new [IoK8sApiResourceV1alpha1ResourceClaimStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiResourceV1alpha1ResourceClaimStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiResourceV1alpha1ResourceClaimStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiResourceV1alpha1ResourceClaimStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiResourceV1alpha1ResourceClaimStatus(
        allocation: IoK8sApiResourceV1alpha1AllocationResult.fromJson(json[r'allocation']),
        deallocationRequested: mapValueOfType<bool>(json, r'deallocationRequested'),
        driverName: mapValueOfType<String>(json, r'driverName'),
        reservedFor: IoK8sApiResourceV1alpha1ResourceClaimConsumerReference.listFromJson(json[r'reservedFor']) ?? const [],
      );
    }
    return null;
  }

  static List<IoK8sApiResourceV1alpha1ResourceClaimStatus>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiResourceV1alpha1ResourceClaimStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiResourceV1alpha1ResourceClaimStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiResourceV1alpha1ResourceClaimStatus> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiResourceV1alpha1ResourceClaimStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1ResourceClaimStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiResourceV1alpha1ResourceClaimStatus-objects as value to a dart map
  static Map<String, List<IoK8sApiResourceV1alpha1ResourceClaimStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiResourceV1alpha1ResourceClaimStatus>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1ResourceClaimStatus.listFromJson(entry.value, growable: growable,);
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

