//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_service_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service_spec.g.dart';

/// APIServiceSpec contains information for locating and communicating with a server. Only https is supported, though you are able to disable certificate verification.
///
/// Properties:
/// * [caBundle] - CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.
/// * [group] - Group is the API group name this server hosts
/// * [groupPriorityMinimum] - GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s
/// * [insecureSkipTLSVerify] - InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.
/// * [service] 
/// * [version] - Version is the API version this server hosts.  For example, \"v1\"
/// * [versionPriority] - VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
@BuiltValue()
abstract class IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec implements Built<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec, IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpecBuilder> {
  /// CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.
  @BuiltValueField(wireName: r'caBundle')
  String? get caBundle;

  /// Group is the API group name this server hosts
  @BuiltValueField(wireName: r'group')
  String? get group;

  /// GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s
  @BuiltValueField(wireName: r'groupPriorityMinimum')
  int get groupPriorityMinimum;

  /// InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.
  @BuiltValueField(wireName: r'insecureSkipTLSVerify')
  bool? get insecureSkipTLSVerify;

  @BuiltValueField(wireName: r'service')
  IoK8sKubeAggregatorPkgApisApiregistrationV1ServiceReference? get service;

  /// Version is the API version this server hosts.  For example, \"v1\"
  @BuiltValueField(wireName: r'version')
  String? get version;

  /// VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  @BuiltValueField(wireName: r'versionPriority')
  int get versionPriority;

  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec._();

  factory IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec([void updates(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpecBuilder b)]) = _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec> get serializer => _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpecSerializer();
}

class _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpecSerializer implements PrimitiveSerializer<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec> {
  @override
  final Iterable<Type> types = const [IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec, _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec];

  @override
  final String wireName = r'IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.caBundle != null) {
      yield r'caBundle';
      yield serializers.serialize(
        object.caBundle,
        specifiedType: const FullType(String),
      );
    }
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(String),
      );
    }
    yield r'groupPriorityMinimum';
    yield serializers.serialize(
      object.groupPriorityMinimum,
      specifiedType: const FullType(int),
    );
    if (object.insecureSkipTLSVerify != null) {
      yield r'insecureSkipTLSVerify';
      yield serializers.serialize(
        object.insecureSkipTLSVerify,
        specifiedType: const FullType(bool),
      );
    }
    if (object.service != null) {
      yield r'service';
      yield serializers.serialize(
        object.service,
        specifiedType: const FullType(IoK8sKubeAggregatorPkgApisApiregistrationV1ServiceReference),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    yield r'versionPriority';
    yield serializers.serialize(
      object.versionPriority,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'caBundle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.caBundle = valueDes;
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.group = valueDes;
          break;
        case r'groupPriorityMinimum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.groupPriorityMinimum = valueDes;
          break;
        case r'insecureSkipTLSVerify':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.insecureSkipTLSVerify = valueDes;
          break;
        case r'service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sKubeAggregatorPkgApisApiregistrationV1ServiceReference),
          ) as IoK8sKubeAggregatorPkgApisApiregistrationV1ServiceReference;
          result.service.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'versionPriority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.versionPriority = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpecBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

