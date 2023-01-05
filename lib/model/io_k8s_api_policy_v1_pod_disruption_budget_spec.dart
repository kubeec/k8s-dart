//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiPolicyV1PodDisruptionBudgetSpec {
  /// Returns a new [IoK8sApiPolicyV1PodDisruptionBudgetSpec] instance.
  IoK8sApiPolicyV1PodDisruptionBudgetSpec({
    this.maxUnavailable,
    this.minAvailable,
    this.selector,
    this.unhealthyPodEvictionPolicy,
  });

  /// IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? maxUnavailable;

  /// IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? minAvailable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApimachineryPkgApisMetaV1LabelSelector? selector;

  /// UnhealthyPodEvictionPolicy defines the criteria for when unhealthy pods should be considered for eviction. Current implementation considers healthy pods, as pods that have status.conditions item with type=\"Ready\",status=\"True\".  Valid policies are IfHealthyBudget and AlwaysAllow. If no policy is specified, the default behavior will be used, which corresponds to the IfHealthyBudget policy.  IfHealthyBudget policy means that running pods (status.phase=\"Running\"), but not yet healthy can be evicted only if the guarded application is not disrupted (status.currentHealthy is at least equal to status.desiredHealthy). Healthy pods will be subject to the PDB for eviction.  AlwaysAllow policy means that all running pods (status.phase=\"Running\"), but not yet healthy are considered disrupted and can be evicted regardless of whether the criteria in a PDB is met. This means perspective running pods of a disrupted application might not get a chance to become healthy. Healthy pods will be subject to the PDB for eviction.  Additional policies may be added in the future. Clients making eviction decisions should disallow eviction of unhealthy pods if they encounter an unrecognized policy in this field.  This field is alpha-level. The eviction API uses this field when the feature gate PDBUnhealthyPodEvictionPolicy is enabled (disabled by default).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unhealthyPodEvictionPolicy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiPolicyV1PodDisruptionBudgetSpec &&
     other.maxUnavailable == maxUnavailable &&
     other.minAvailable == minAvailable &&
     other.selector == selector &&
     other.unhealthyPodEvictionPolicy == unhealthyPodEvictionPolicy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (maxUnavailable == null ? 0 : maxUnavailable!.hashCode) +
    (minAvailable == null ? 0 : minAvailable!.hashCode) +
    (selector == null ? 0 : selector!.hashCode) +
    (unhealthyPodEvictionPolicy == null ? 0 : unhealthyPodEvictionPolicy!.hashCode);

  @override
  String toString() => 'IoK8sApiPolicyV1PodDisruptionBudgetSpec[maxUnavailable=$maxUnavailable, minAvailable=$minAvailable, selector=$selector, unhealthyPodEvictionPolicy=$unhealthyPodEvictionPolicy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.maxUnavailable != null) {
      json[r'maxUnavailable'] = this.maxUnavailable;
    } else {
      json[r'maxUnavailable'] = null;
    }
    if (this.minAvailable != null) {
      json[r'minAvailable'] = this.minAvailable;
    } else {
      json[r'minAvailable'] = null;
    }
    if (this.selector != null) {
      json[r'selector'] = this.selector;
    } else {
      json[r'selector'] = null;
    }
    if (this.unhealthyPodEvictionPolicy != null) {
      json[r'unhealthyPodEvictionPolicy'] = this.unhealthyPodEvictionPolicy;
    } else {
      json[r'unhealthyPodEvictionPolicy'] = null;
    }
    return json;
  }

  /// Returns a new [IoK8sApiPolicyV1PodDisruptionBudgetSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiPolicyV1PodDisruptionBudgetSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiPolicyV1PodDisruptionBudgetSpec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiPolicyV1PodDisruptionBudgetSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiPolicyV1PodDisruptionBudgetSpec(
        maxUnavailable: mapValueOfType<String>(json, r'maxUnavailable'),
        minAvailable: mapValueOfType<String>(json, r'minAvailable'),
        selector: IoK8sApimachineryPkgApisMetaV1LabelSelector.fromJson(json[r'selector']),
        unhealthyPodEvictionPolicy: mapValueOfType<String>(json, r'unhealthyPodEvictionPolicy'),
      );
    }
    return null;
  }

  static List<IoK8sApiPolicyV1PodDisruptionBudgetSpec>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiPolicyV1PodDisruptionBudgetSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiPolicyV1PodDisruptionBudgetSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiPolicyV1PodDisruptionBudgetSpec> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiPolicyV1PodDisruptionBudgetSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiPolicyV1PodDisruptionBudgetSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiPolicyV1PodDisruptionBudgetSpec-objects as value to a dart map
  static Map<String, List<IoK8sApiPolicyV1PodDisruptionBudgetSpec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiPolicyV1PodDisruptionBudgetSpec>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiPolicyV1PodDisruptionBudgetSpec.listFromJson(entry.value, growable: growable,);
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

