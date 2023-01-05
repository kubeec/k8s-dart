//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiResourceV1alpha1PodSchedulingSpec {
  /// Returns a new [IoK8sApiResourceV1alpha1PodSchedulingSpec] instance.
  IoK8sApiResourceV1alpha1PodSchedulingSpec({
    this.potentialNodes = const [],
    this.selectedNode,
  });

  /// PotentialNodes lists nodes where the Pod might be able to run.  The size of this field is limited to 128. This is large enough for many clusters. Larger clusters may need more attempts to find a node that suits all pending resources. This may get increased in the future, but not reduced.
  List<String> potentialNodes;

  /// SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use \"WaitForFirstConsumer\" allocation is to be attempted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? selectedNode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiResourceV1alpha1PodSchedulingSpec &&
     other.potentialNodes == potentialNodes &&
     other.selectedNode == selectedNode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (potentialNodes.hashCode) +
    (selectedNode == null ? 0 : selectedNode!.hashCode);

  @override
  String toString() => 'IoK8sApiResourceV1alpha1PodSchedulingSpec[potentialNodes=$potentialNodes, selectedNode=$selectedNode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'potentialNodes'] = this.potentialNodes;
    if (this.selectedNode != null) {
      json[r'selectedNode'] = this.selectedNode;
    } else {
      json[r'selectedNode'] = null;
    }
    return json;
  }

  /// Returns a new [IoK8sApiResourceV1alpha1PodSchedulingSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiResourceV1alpha1PodSchedulingSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiResourceV1alpha1PodSchedulingSpec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiResourceV1alpha1PodSchedulingSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiResourceV1alpha1PodSchedulingSpec(
        potentialNodes: json[r'potentialNodes'] is List
            ? (json[r'potentialNodes'] as List).cast<String>()
            : const [],
        selectedNode: mapValueOfType<String>(json, r'selectedNode'),
      );
    }
    return null;
  }

  static List<IoK8sApiResourceV1alpha1PodSchedulingSpec>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiResourceV1alpha1PodSchedulingSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiResourceV1alpha1PodSchedulingSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiResourceV1alpha1PodSchedulingSpec> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiResourceV1alpha1PodSchedulingSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1PodSchedulingSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiResourceV1alpha1PodSchedulingSpec-objects as value to a dart map
  static Map<String, List<IoK8sApiResourceV1alpha1PodSchedulingSpec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiResourceV1alpha1PodSchedulingSpec>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiResourceV1alpha1PodSchedulingSpec.listFromJson(entry.value, growable: growable,);
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

