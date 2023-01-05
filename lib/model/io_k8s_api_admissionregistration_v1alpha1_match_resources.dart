//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiAdmissionregistrationV1alpha1MatchResources {
  /// Returns a new [IoK8sApiAdmissionregistrationV1alpha1MatchResources] instance.
  IoK8sApiAdmissionregistrationV1alpha1MatchResources({
    this.excludeResourceRules = const [],
    this.matchPolicy,
    this.namespaceSelector,
    this.objectSelector,
    this.resourceRules = const [],
  });

  /// ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
  List<IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations> excludeResourceRules;

  /// matchPolicy defines how the \"MatchResources\" list is used to match incoming requests. Allowed values are \"Exact\" or \"Equivalent\".  - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the ValidatingAdmissionPolicy.  - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the ValidatingAdmissionPolicy.  Defaults to \"Equivalent\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? matchPolicy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApimachineryPkgApisMetaV1LabelSelector? namespaceSelector;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApimachineryPkgApisMetaV1LabelSelector? objectSelector;

  /// ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches _any_ Rule.
  List<IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations> resourceRules;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiAdmissionregistrationV1alpha1MatchResources &&
     other.excludeResourceRules == excludeResourceRules &&
     other.matchPolicy == matchPolicy &&
     other.namespaceSelector == namespaceSelector &&
     other.objectSelector == objectSelector &&
     other.resourceRules == resourceRules;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (excludeResourceRules.hashCode) +
    (matchPolicy == null ? 0 : matchPolicy!.hashCode) +
    (namespaceSelector == null ? 0 : namespaceSelector!.hashCode) +
    (objectSelector == null ? 0 : objectSelector!.hashCode) +
    (resourceRules.hashCode);

  @override
  String toString() => 'IoK8sApiAdmissionregistrationV1alpha1MatchResources[excludeResourceRules=$excludeResourceRules, matchPolicy=$matchPolicy, namespaceSelector=$namespaceSelector, objectSelector=$objectSelector, resourceRules=$resourceRules]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'excludeResourceRules'] = this.excludeResourceRules;
    if (this.matchPolicy != null) {
      json[r'matchPolicy'] = this.matchPolicy;
    } else {
      json[r'matchPolicy'] = null;
    }
    if (this.namespaceSelector != null) {
      json[r'namespaceSelector'] = this.namespaceSelector;
    } else {
      json[r'namespaceSelector'] = null;
    }
    if (this.objectSelector != null) {
      json[r'objectSelector'] = this.objectSelector;
    } else {
      json[r'objectSelector'] = null;
    }
      json[r'resourceRules'] = this.resourceRules;
    return json;
  }

  /// Returns a new [IoK8sApiAdmissionregistrationV1alpha1MatchResources] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiAdmissionregistrationV1alpha1MatchResources? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiAdmissionregistrationV1alpha1MatchResources[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiAdmissionregistrationV1alpha1MatchResources[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiAdmissionregistrationV1alpha1MatchResources(
        excludeResourceRules: IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations.listFromJson(json[r'excludeResourceRules']) ?? const [],
        matchPolicy: mapValueOfType<String>(json, r'matchPolicy'),
        namespaceSelector: IoK8sApimachineryPkgApisMetaV1LabelSelector.fromJson(json[r'namespaceSelector']),
        objectSelector: IoK8sApimachineryPkgApisMetaV1LabelSelector.fromJson(json[r'objectSelector']),
        resourceRules: IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations.listFromJson(json[r'resourceRules']) ?? const [],
      );
    }
    return null;
  }

  static List<IoK8sApiAdmissionregistrationV1alpha1MatchResources>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiAdmissionregistrationV1alpha1MatchResources>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiAdmissionregistrationV1alpha1MatchResources.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiAdmissionregistrationV1alpha1MatchResources> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiAdmissionregistrationV1alpha1MatchResources>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiAdmissionregistrationV1alpha1MatchResources.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiAdmissionregistrationV1alpha1MatchResources-objects as value to a dart map
  static Map<String, List<IoK8sApiAdmissionregistrationV1alpha1MatchResources>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiAdmissionregistrationV1alpha1MatchResources>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiAdmissionregistrationV1alpha1MatchResources.listFromJson(entry.value, growable: growable,);
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

