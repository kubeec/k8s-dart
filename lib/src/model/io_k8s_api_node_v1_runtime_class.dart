//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_node_v1_scheduling.dart';
import 'package:k8s/src/model/io_k8s_api_node_v1_overhead.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_node_v1_runtime_class.g.dart';

/// RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see https://kubernetes.io/docs/concepts/containers/runtime-class/
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [handler] - Handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called \"runc\" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [overhead] 
/// * [scheduling] 
@BuiltValue()
abstract class IoK8sApiNodeV1RuntimeClass implements Built<IoK8sApiNodeV1RuntimeClass, IoK8sApiNodeV1RuntimeClassBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called \"runc\" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
  @BuiltValueField(wireName: r'handler')
  String get handler;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  @BuiltValueField(wireName: r'overhead')
  IoK8sApiNodeV1Overhead? get overhead;

  @BuiltValueField(wireName: r'scheduling')
  IoK8sApiNodeV1Scheduling? get scheduling;

  IoK8sApiNodeV1RuntimeClass._();

  factory IoK8sApiNodeV1RuntimeClass([void updates(IoK8sApiNodeV1RuntimeClassBuilder b)]) = _$IoK8sApiNodeV1RuntimeClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNodeV1RuntimeClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNodeV1RuntimeClass> get serializer => _$IoK8sApiNodeV1RuntimeClassSerializer();
}

class _$IoK8sApiNodeV1RuntimeClassSerializer implements PrimitiveSerializer<IoK8sApiNodeV1RuntimeClass> {
  @override
  final Iterable<Type> types = const [IoK8sApiNodeV1RuntimeClass, _$IoK8sApiNodeV1RuntimeClass];

  @override
  final String wireName = r'IoK8sApiNodeV1RuntimeClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNodeV1RuntimeClass object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'handler';
    yield serializers.serialize(
      object.handler,
      specifiedType: const FullType(String),
    );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
      );
    }
    if (object.overhead != null) {
      yield r'overhead';
      yield serializers.serialize(
        object.overhead,
        specifiedType: const FullType(IoK8sApiNodeV1Overhead),
      );
    }
    if (object.scheduling != null) {
      yield r'scheduling';
      yield serializers.serialize(
        object.scheduling,
        specifiedType: const FullType(IoK8sApiNodeV1Scheduling),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNodeV1RuntimeClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNodeV1RuntimeClassBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiVersion = valueDes;
          break;
        case r'handler':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.handler = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ObjectMeta;
          result.metadata.replace(valueDes);
          break;
        case r'overhead':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiNodeV1Overhead),
          ) as IoK8sApiNodeV1Overhead;
          result.overhead.replace(valueDes);
          break;
        case r'scheduling':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiNodeV1Scheduling),
          ) as IoK8sApiNodeV1Scheduling;
          result.scheduling.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNodeV1RuntimeClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNodeV1RuntimeClassBuilder();
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

