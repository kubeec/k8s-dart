//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class IoK8sApiNetworkingV1IngressLoadBalancerIngress {
  /// Returns a new [IoK8sApiNetworkingV1IngressLoadBalancerIngress] instance.
  IoK8sApiNetworkingV1IngressLoadBalancerIngress({
    this.hostname,
    this.ip,
    this.ports = const [],
  });

  /// Hostname is set for load-balancer ingress points that are DNS based.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostname;

  /// IP is set for load-balancer ingress points that are IP based.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ip;

  /// Ports provides information about the ports exposed by this LoadBalancer.
  List<IoK8sApiNetworkingV1IngressPortStatus> ports;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IoK8sApiNetworkingV1IngressLoadBalancerIngress &&
     other.hostname == hostname &&
     other.ip == ip &&
     other.ports == ports;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hostname == null ? 0 : hostname!.hashCode) +
    (ip == null ? 0 : ip!.hashCode) +
    (ports.hashCode);

  @override
  String toString() => 'IoK8sApiNetworkingV1IngressLoadBalancerIngress[hostname=$hostname, ip=$ip, ports=$ports]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.hostname != null) {
      json[r'hostname'] = this.hostname;
    } else {
      json[r'hostname'] = null;
    }
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
      json[r'ports'] = this.ports;
    return json;
  }

  /// Returns a new [IoK8sApiNetworkingV1IngressLoadBalancerIngress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiNetworkingV1IngressLoadBalancerIngress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IoK8sApiNetworkingV1IngressLoadBalancerIngress[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IoK8sApiNetworkingV1IngressLoadBalancerIngress[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiNetworkingV1IngressLoadBalancerIngress(
        hostname: mapValueOfType<String>(json, r'hostname'),
        ip: mapValueOfType<String>(json, r'ip'),
        ports: IoK8sApiNetworkingV1IngressPortStatus.listFromJson(json[r'ports']) ?? const [],
      );
    }
    return null;
  }

  static List<IoK8sApiNetworkingV1IngressLoadBalancerIngress>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IoK8sApiNetworkingV1IngressLoadBalancerIngress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiNetworkingV1IngressLoadBalancerIngress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiNetworkingV1IngressLoadBalancerIngress> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiNetworkingV1IngressLoadBalancerIngress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiNetworkingV1IngressLoadBalancerIngress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiNetworkingV1IngressLoadBalancerIngress-objects as value to a dart map
  static Map<String, List<IoK8sApiNetworkingV1IngressLoadBalancerIngress>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IoK8sApiNetworkingV1IngressLoadBalancerIngress>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiNetworkingV1IngressLoadBalancerIngress.listFromJson(entry.value, growable: growable,);
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

