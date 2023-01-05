//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiResourceV1alpha1AllocationResult {
  /// Returns a new [IoK8sApiResourceV1alpha1AllocationResult] instance.
  IoK8sApiResourceV1alpha1AllocationResult({
    this.availableOnNodes,
    this.resourceHandle,
    this.shareable,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiCoreV1NodeSelector? availableOnNodes;

  /// ResourceHandle contains arbitrary data returned by the driver after a successful allocation. This is opaque for Kubernetes. Driver documentation may explain to users how to interpret this data if needed.  The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceHandle;

  /// Shareable determines whether the resource supports more than one consumer at a time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? shareable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiResourceV1alpha1AllocationResult &&
     other.availableOnNodes == availableOnNodes &&
     other.resourceHandle == resourceHandle &&
     other.shareable == shareable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (availableOnNodes == null ? 0 : availableOnNodes!.hashCode) +
    (resourceHandle == null ? 0 : resourceHandle!.hashCode) +
    (shareable == null ? 0 : shareable!.hashCode);

  @override
  String toString() => 'IoK8sApiResourceV1alpha1AllocationResult[availableOnNodes=$availableOnNodes, resourceHandle=$resourceHandle, shareable=$shareable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.availableOnNodes != null) {
      json[r'availableOnNodes'] = this.availableOnNodes;
    } else {
      json[r'availableOnNodes'] = null;
    }
    if (this.resourceHandle != null) {
      json[r'resourceHandle'] = this.resourceHandle;
    } else {
      json[r'resourceHandle'] = null;
    }
    if (this.shareable != null) {
      json[r'shareable'] = this.shareable;
    } else {
      json[r'shareable'] = null;
    }
    return json;
  }

  /// Returns a new [IoK8sApiResourceV1alpha1AllocationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiResourceV1alpha1AllocationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiResourceV1alpha1AllocationResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiResourceV1alpha1AllocationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiResourceV1alpha1AllocationResult(
        availableOnNodes: IoK8sApiCoreV1NodeSelector.fromJson(json[r'availableOnNodes']),
        resourceHandle: mapValueOfType<String>(json, r'resourceHandle'),
        shareable: mapValueOfType<bool>(json, r'shareable'),
      );
    }
    return null;
  }

  static List<IoK8sApiResourceV1alpha1AllocationResult>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiResourceV1alpha1AllocationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiResourceV1alpha1AllocationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiResourceV1alpha1AllocationResult> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiResourceV1alpha1AllocationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1AllocationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiResourceV1alpha1AllocationResult-objects as value to a dart map
  static Map<String, List<IoK8sApiResourceV1alpha1AllocationResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiResourceV1alpha1AllocationResult>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1AllocationResult.listFromJson(entry.value, growable: growable,);
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

