//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiAppsV1StatefulSetOrdinals {
  /// Returns a new [IoK8sApiAppsV1StatefulSetOrdinals] instance.
  IoK8sApiAppsV1StatefulSetOrdinals({
    this.start,
  });

  /// start is the number representing the first replica's index. It may be used to number replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to orchestrate progressive movement of replicas from one StatefulSet to another. If set, replica indices will be in the range:   [.spec.ordinals.start, .spec.ordinals.start + .spec.replicas). If unset, defaults to 0. Replica indices will be in the range:   [0, .spec.replicas).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiAppsV1StatefulSetOrdinals &&
     other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (start == null ? 0 : start!.hashCode);

  @override
  String toString() => 'IoK8sApiAppsV1StatefulSetOrdinals[start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    return json;
  }

  /// Returns a new [IoK8sApiAppsV1StatefulSetOrdinals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiAppsV1StatefulSetOrdinals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiAppsV1StatefulSetOrdinals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiAppsV1StatefulSetOrdinals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiAppsV1StatefulSetOrdinals(
        start: mapValueOfType<int>(json, r'start'),
      );
    }
    return null;
  }

  static List<IoK8sApiAppsV1StatefulSetOrdinals>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiAppsV1StatefulSetOrdinals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiAppsV1StatefulSetOrdinals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiAppsV1StatefulSetOrdinals> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiAppsV1StatefulSetOrdinals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiAppsV1StatefulSetOrdinals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiAppsV1StatefulSetOrdinals-objects as value to a dart map
  static Map<String, List<IoK8sApiAppsV1StatefulSetOrdinals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiAppsV1StatefulSetOrdinals>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiAppsV1StatefulSetOrdinals.listFromJson(entry.value, growable: growable,);
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

