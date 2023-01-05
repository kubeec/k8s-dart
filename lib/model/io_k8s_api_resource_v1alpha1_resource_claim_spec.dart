//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiResourceV1alpha1ResourceClaimSpec {
  /// Returns a new [IoK8sApiResourceV1alpha1ResourceClaimSpec] instance.
  IoK8sApiResourceV1alpha1ResourceClaimSpec({
    this.allocationMode,
    this.parametersRef,
    required this.resourceClassName,
  });

  /// Allocation can start immediately or when a Pod wants to use the resource. \"WaitForFirstConsumer\" is the default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? allocationMode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiResourceV1alpha1ResourceClaimParametersReference? parametersRef;

  /// ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment.
  String resourceClassName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiResourceV1alpha1ResourceClaimSpec &&
     other.allocationMode == allocationMode &&
     other.parametersRef == parametersRef &&
     other.resourceClassName == resourceClassName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allocationMode == null ? 0 : allocationMode!.hashCode) +
    (parametersRef == null ? 0 : parametersRef!.hashCode) +
    (resourceClassName.hashCode);

  @override
  String toString() => 'IoK8sApiResourceV1alpha1ResourceClaimSpec[allocationMode=$allocationMode, parametersRef=$parametersRef, resourceClassName=$resourceClassName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.allocationMode != null) {
      json[r'allocationMode'] = this.allocationMode;
    } else {
      json[r'allocationMode'] = null;
    }
    if (this.parametersRef != null) {
      json[r'parametersRef'] = this.parametersRef;
    } else {
      json[r'parametersRef'] = null;
    }
      json[r'resourceClassName'] = this.resourceClassName;
    return json;
  }

  /// Returns a new [IoK8sApiResourceV1alpha1ResourceClaimSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiResourceV1alpha1ResourceClaimSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiResourceV1alpha1ResourceClaimSpec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiResourceV1alpha1ResourceClaimSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiResourceV1alpha1ResourceClaimSpec(
        allocationMode: mapValueOfType<String>(json, r'allocationMode'),
        parametersRef: IoK8sApiResourceV1alpha1ResourceClaimParametersReference.fromJson(json[r'parametersRef']),
        resourceClassName: mapValueOfType<String>(json, r'resourceClassName')!,
      );
    }
    return null;
  }

  static List<IoK8sApiResourceV1alpha1ResourceClaimSpec>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiResourceV1alpha1ResourceClaimSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiResourceV1alpha1ResourceClaimSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiResourceV1alpha1ResourceClaimSpec> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiResourceV1alpha1ResourceClaimSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1ResourceClaimSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiResourceV1alpha1ResourceClaimSpec-objects as value to a dart map
  static Map<String, List<IoK8sApiResourceV1alpha1ResourceClaimSpec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiResourceV1alpha1ResourceClaimSpec>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1ResourceClaimSpec.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'resourceClassName',
  };
}

