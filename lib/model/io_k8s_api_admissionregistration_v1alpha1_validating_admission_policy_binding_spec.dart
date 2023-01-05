//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec {
  /// Returns a new [IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec] instance.
  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec({
    this.matchResources,
    this.paramRef,
    this.policyName,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiAdmissionregistrationV1alpha1MatchResources? matchResources;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiAdmissionregistrationV1alpha1ParamRef? paramRef;

  /// PolicyName references a ValidatingAdmissionPolicy name which the ValidatingAdmissionPolicyBinding binds to. If the referenced resource does not exist, this binding is considered invalid and will be ignored Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? policyName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec &&
     other.matchResources == matchResources &&
     other.paramRef == paramRef &&
     other.policyName == policyName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (matchResources == null ? 0 : matchResources!.hashCode) +
    (paramRef == null ? 0 : paramRef!.hashCode) +
    (policyName == null ? 0 : policyName!.hashCode);

  @override
  String toString() => 'IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec[matchResources=$matchResources, paramRef=$paramRef, policyName=$policyName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.matchResources != null) {
      json[r'matchResources'] = this.matchResources;
    } else {
      json[r'matchResources'] = null;
    }
    if (this.paramRef != null) {
      json[r'paramRef'] = this.paramRef;
    } else {
      json[r'paramRef'] = null;
    }
    if (this.policyName != null) {
      json[r'policyName'] = this.policyName;
    } else {
      json[r'policyName'] = null;
    }
    return json;
  }

  /// Returns a new [IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec(
        matchResources: IoK8sApiAdmissionregistrationV1alpha1MatchResources.fromJson(json[r'matchResources']),
        paramRef: IoK8sApiAdmissionregistrationV1alpha1ParamRef.fromJson(json[r'paramRef']),
        policyName: mapValueOfType<String>(json, r'policyName'),
      );
    }
    return null;
  }

  static List<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec-objects as value to a dart map
  static Map<String, List<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec.listFromJson(entry.value, growable: growable,);
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

