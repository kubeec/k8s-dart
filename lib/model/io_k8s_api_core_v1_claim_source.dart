//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiCoreV1ClaimSource {
  /// Returns a new [IoK8sApiCoreV1ClaimSource] instance.
  IoK8sApiCoreV1ClaimSource({
    this.resourceClaimName,
    this.resourceClaimTemplateName,
  });

  /// ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceClaimName;

  /// ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.  The template will be used to create a new ResourceClaim, which will be bound to this pod. When this pod is deleted, the ResourceClaim will also be deleted. The name of the ResourceClaim will be <pod name>-<resource name>, where <resource name> is the PodResourceClaim.Name. Pod validation will reject the pod if the concatenated name is not valid for a ResourceClaim (e.g. too long).  An existing ResourceClaim with that name that is not owned by the pod will not be used for the pod to avoid using an unrelated resource by mistake. Scheduling and pod startup are then blocked until the unrelated ResourceClaim is removed.  This field is immutable and no changes will be made to the corresponding ResourceClaim by the control plane after creating the ResourceClaim.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceClaimTemplateName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiCoreV1ClaimSource &&
     other.resourceClaimName == resourceClaimName &&
     other.resourceClaimTemplateName == resourceClaimTemplateName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (resourceClaimName == null ? 0 : resourceClaimName!.hashCode) +
    (resourceClaimTemplateName == null ? 0 : resourceClaimTemplateName!.hashCode);

  @override
  String toString() => 'IoK8sApiCoreV1ClaimSource[resourceClaimName=$resourceClaimName, resourceClaimTemplateName=$resourceClaimTemplateName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.resourceClaimName != null) {
      json[r'resourceClaimName'] = this.resourceClaimName;
    } else {
      json[r'resourceClaimName'] = null;
    }
    if (this.resourceClaimTemplateName != null) {
      json[r'resourceClaimTemplateName'] = this.resourceClaimTemplateName;
    } else {
      json[r'resourceClaimTemplateName'] = null;
    }
    return json;
  }

  /// Returns a new [IoK8sApiCoreV1ClaimSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiCoreV1ClaimSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiCoreV1ClaimSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiCoreV1ClaimSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiCoreV1ClaimSource(
        resourceClaimName: mapValueOfType<String>(json, r'resourceClaimName'),
        resourceClaimTemplateName: mapValueOfType<String>(json, r'resourceClaimTemplateName'),
      );
    }
    return null;
  }

  static List<IoK8sApiCoreV1ClaimSource>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiCoreV1ClaimSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiCoreV1ClaimSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiCoreV1ClaimSource> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiCoreV1ClaimSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1ClaimSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiCoreV1ClaimSource-objects as value to a dart map
  static Map<String, List<IoK8sApiCoreV1ClaimSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiCoreV1ClaimSource>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1ClaimSource.listFromJson(entry.value, growable: growable,);
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

