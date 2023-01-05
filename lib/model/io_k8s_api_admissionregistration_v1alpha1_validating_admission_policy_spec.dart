//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec {
  /// Returns a new [IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec] instance.
  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec({
    this.failurePolicy,
    this.matchConstraints,
    this.paramKind,
    this.validations = const [],
  });

  /// FailurePolicy defines how to handle failures for the admission policy. Failures can occur from invalid or mis-configured policy definitions or bindings. A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource. Allowed values are Ignore or Fail. Defaults to Fail.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failurePolicy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiAdmissionregistrationV1alpha1MatchResources? matchConstraints;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiAdmissionregistrationV1alpha1ParamKind? paramKind;

  /// Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required.
  List<IoK8sApiAdmissionregistrationV1alpha1Validation> validations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec &&
     other.failurePolicy == failurePolicy &&
     other.matchConstraints == matchConstraints &&
     other.paramKind == paramKind &&
     other.validations == validations;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (failurePolicy == null ? 0 : failurePolicy!.hashCode) +
    (matchConstraints == null ? 0 : matchConstraints!.hashCode) +
    (paramKind == null ? 0 : paramKind!.hashCode) +
    (validations.hashCode);

  @override
  String toString() => 'IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec[failurePolicy=$failurePolicy, matchConstraints=$matchConstraints, paramKind=$paramKind, validations=$validations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.failurePolicy != null) {
      json[r'failurePolicy'] = this.failurePolicy;
    } else {
      json[r'failurePolicy'] = null;
    }
    if (this.matchConstraints != null) {
      json[r'matchConstraints'] = this.matchConstraints;
    } else {
      json[r'matchConstraints'] = null;
    }
    if (this.paramKind != null) {
      json[r'paramKind'] = this.paramKind;
    } else {
      json[r'paramKind'] = null;
    }
      json[r'validations'] = this.validations;
    return json;
  }

  /// Returns a new [IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec(
        failurePolicy: mapValueOfType<String>(json, r'failurePolicy'),
        matchConstraints: IoK8sApiAdmissionregistrationV1alpha1MatchResources.fromJson(json[r'matchConstraints']),
        paramKind: IoK8sApiAdmissionregistrationV1alpha1ParamKind.fromJson(json[r'paramKind']),
        validations: IoK8sApiAdmissionregistrationV1alpha1Validation.listFromJson(json[r'validations'])!,
      );
    }
    return null;
  }

  static List<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec-objects as value to a dart map
  static Map<String, List<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'validations',
  };
}

