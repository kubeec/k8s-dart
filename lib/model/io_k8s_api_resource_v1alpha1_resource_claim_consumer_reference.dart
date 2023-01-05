//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiResourceV1alpha1ResourceClaimConsumerReference {
  /// Returns a new [IoK8sApiResourceV1alpha1ResourceClaimConsumerReference] instance.
  IoK8sApiResourceV1alpha1ResourceClaimConsumerReference({
    this.apiGroup,
    required this.name,
    required this.resource,
    required this.uid,
  });

  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiGroup;

  /// Name is the name of resource being referenced.
  String name;

  /// Resource is the type of resource being referenced, for example \"pods\".
  String resource;

  /// UID identifies exactly one incarnation of the resource.
  String uid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiResourceV1alpha1ResourceClaimConsumerReference &&
     other.apiGroup == apiGroup &&
     other.name == name &&
     other.resource == resource &&
     other.uid == uid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apiGroup == null ? 0 : apiGroup!.hashCode) +
    (name.hashCode) +
    (resource.hashCode) +
    (uid.hashCode);

  @override
  String toString() => 'IoK8sApiResourceV1alpha1ResourceClaimConsumerReference[apiGroup=$apiGroup, name=$name, resource=$resource, uid=$uid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apiGroup != null) {
      json[r'apiGroup'] = this.apiGroup;
    } else {
      json[r'apiGroup'] = null;
    }
      json[r'name'] = this.name;
      json[r'resource'] = this.resource;
      json[r'uid'] = this.uid;
    return json;
  }

  /// Returns a new [IoK8sApiResourceV1alpha1ResourceClaimConsumerReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiResourceV1alpha1ResourceClaimConsumerReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiResourceV1alpha1ResourceClaimConsumerReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiResourceV1alpha1ResourceClaimConsumerReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiResourceV1alpha1ResourceClaimConsumerReference(
        apiGroup: mapValueOfType<String>(json, r'apiGroup'),
        name: mapValueOfType<String>(json, r'name')!,
        resource: mapValueOfType<String>(json, r'resource')!,
        uid: mapValueOfType<String>(json, r'uid')!,
      );
    }
    return null;
  }

  static List<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiResourceV1alpha1ResourceClaimConsumerReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiResourceV1alpha1ResourceClaimConsumerReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiResourceV1alpha1ResourceClaimConsumerReference> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiResourceV1alpha1ResourceClaimConsumerReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1ResourceClaimConsumerReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiResourceV1alpha1ResourceClaimConsumerReference-objects as value to a dart map
  static Map<String, List<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1ResourceClaimConsumerReference.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'resource',
    'uid',
  };
}

