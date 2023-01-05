//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiCoreV1PodResourceClaim {
  /// Returns a new [IoK8sApiCoreV1PodResourceClaim] instance.
  IoK8sApiCoreV1PodResourceClaim({
    required this.name,
    this.source_,
  });

  /// Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL.
  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiCoreV1ClaimSource? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiCoreV1PodResourceClaim &&
     other.name == name &&
     other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'IoK8sApiCoreV1PodResourceClaim[name=$name, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [IoK8sApiCoreV1PodResourceClaim] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiCoreV1PodResourceClaim? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiCoreV1PodResourceClaim[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiCoreV1PodResourceClaim[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiCoreV1PodResourceClaim(
        name: mapValueOfType<String>(json, r'name')!,
        source_: IoK8sApiCoreV1ClaimSource.fromJson(json[r'source']),
      );
    }
    return null;
  }

  static List<IoK8sApiCoreV1PodResourceClaim>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiCoreV1PodResourceClaim>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiCoreV1PodResourceClaim.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiCoreV1PodResourceClaim> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiCoreV1PodResourceClaim>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1PodResourceClaim.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiCoreV1PodResourceClaim-objects as value to a dart map
  static Map<String, List<IoK8sApiCoreV1PodResourceClaim>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiCoreV1PodResourceClaim>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1PodResourceClaim.listFromJson(entry.value, growable: growable,);
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
  };
}

