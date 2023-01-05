//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiResourceV1alpha1PodSchedulingStatus {
  /// Returns a new [IoK8sApiResourceV1alpha1PodSchedulingStatus] instance.
  IoK8sApiResourceV1alpha1PodSchedulingStatus({
    this.resourceClaims = const [],
  });

  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses \"WaitForFirstConsumer\" allocation mode.
  List<IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus> resourceClaims;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiResourceV1alpha1PodSchedulingStatus &&
     other.resourceClaims == resourceClaims;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (resourceClaims.hashCode);

  @override
  String toString() => 'IoK8sApiResourceV1alpha1PodSchedulingStatus[resourceClaims=$resourceClaims]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'resourceClaims'] = this.resourceClaims;
    return json;
  }

  /// Returns a new [IoK8sApiResourceV1alpha1PodSchedulingStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiResourceV1alpha1PodSchedulingStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiResourceV1alpha1PodSchedulingStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiResourceV1alpha1PodSchedulingStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiResourceV1alpha1PodSchedulingStatus(
        resourceClaims: IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus.listFromJson(json[r'resourceClaims']) ?? const [],
      );
    }
    return null;
  }

  static List<IoK8sApiResourceV1alpha1PodSchedulingStatus>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiResourceV1alpha1PodSchedulingStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiResourceV1alpha1PodSchedulingStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiResourceV1alpha1PodSchedulingStatus> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiResourceV1alpha1PodSchedulingStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1PodSchedulingStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiResourceV1alpha1PodSchedulingStatus-objects as value to a dart map
  static Map<String, List<IoK8sApiResourceV1alpha1PodSchedulingStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiResourceV1alpha1PodSchedulingStatus>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1PodSchedulingStatus.listFromJson(entry.value, growable: growable,);
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

