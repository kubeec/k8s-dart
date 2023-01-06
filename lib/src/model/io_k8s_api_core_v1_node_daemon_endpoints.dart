//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_daemon_endpoint.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_node_daemon_endpoints.g.dart';

/// NodeDaemonEndpoints lists ports opened by daemons running on the Node.
///
/// Properties:
/// * [kubeletEndpoint] 
@BuiltValue()
abstract class IoK8sApiCoreV1NodeDaemonEndpoints implements Built<IoK8sApiCoreV1NodeDaemonEndpoints, IoK8sApiCoreV1NodeDaemonEndpointsBuilder> {
  @BuiltValueField(wireName: r'kubeletEndpoint')
  IoK8sApiCoreV1DaemonEndpoint? get kubeletEndpoint;

  IoK8sApiCoreV1NodeDaemonEndpoints._();

  factory IoK8sApiCoreV1NodeDaemonEndpoints([void updates(IoK8sApiCoreV1NodeDaemonEndpointsBuilder b)]) = _$IoK8sApiCoreV1NodeDaemonEndpoints;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NodeDaemonEndpointsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NodeDaemonEndpoints> get serializer => _$IoK8sApiCoreV1NodeDaemonEndpointsSerializer();
}

class _$IoK8sApiCoreV1NodeDaemonEndpointsSerializer implements PrimitiveSerializer<IoK8sApiCoreV1NodeDaemonEndpoints> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NodeDaemonEndpoints, _$IoK8sApiCoreV1NodeDaemonEndpoints];

  @override
  final String wireName = r'IoK8sApiCoreV1NodeDaemonEndpoints';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NodeDaemonEndpoints object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kubeletEndpoint != null) {
      yield r'kubeletEndpoint';
      yield serializers.serialize(
        object.kubeletEndpoint,
        specifiedType: const FullType(IoK8sApiCoreV1DaemonEndpoint),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NodeDaemonEndpoints object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NodeDaemonEndpointsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kubeletEndpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1DaemonEndpoint),
          ) as IoK8sApiCoreV1DaemonEndpoint;
          result.kubeletEndpoint.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1NodeDaemonEndpoints deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NodeDaemonEndpointsBuilder();
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

