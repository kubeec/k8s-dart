//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_condition.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_load_balancer_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_service_status.g.dart';

/// ServiceStatus represents the current status of a service.
///
/// Properties:
/// * [conditions] - Current service state
/// * [loadBalancer] 
@BuiltValue()
abstract class IoK8sApiCoreV1ServiceStatus implements Built<IoK8sApiCoreV1ServiceStatus, IoK8sApiCoreV1ServiceStatusBuilder> {
  /// Current service state
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApimachineryPkgApisMetaV1Condition>? get conditions;

  @BuiltValueField(wireName: r'loadBalancer')
  IoK8sApiCoreV1LoadBalancerStatus? get loadBalancer;

  IoK8sApiCoreV1ServiceStatus._();

  factory IoK8sApiCoreV1ServiceStatus([void updates(IoK8sApiCoreV1ServiceStatusBuilder b)]) = _$IoK8sApiCoreV1ServiceStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ServiceStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ServiceStatus> get serializer => _$IoK8sApiCoreV1ServiceStatusSerializer();
}

class _$IoK8sApiCoreV1ServiceStatusSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ServiceStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ServiceStatus, _$IoK8sApiCoreV1ServiceStatus];

  @override
  final String wireName = r'IoK8sApiCoreV1ServiceStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ServiceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1Condition)]),
      );
    }
    if (object.loadBalancer != null) {
      yield r'loadBalancer';
      yield serializers.serialize(
        object.loadBalancer,
        specifiedType: const FullType(IoK8sApiCoreV1LoadBalancerStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ServiceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ServiceStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1Condition)]),
          ) as BuiltList<IoK8sApimachineryPkgApisMetaV1Condition>;
          result.conditions.replace(valueDes);
          break;
        case r'loadBalancer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1LoadBalancerStatus),
          ) as IoK8sApiCoreV1LoadBalancerStatus;
          result.loadBalancer.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ServiceStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ServiceStatusBuilder();
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

