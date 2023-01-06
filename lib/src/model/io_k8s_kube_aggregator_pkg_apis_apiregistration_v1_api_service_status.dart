//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service_condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service_status.g.dart';

/// APIServiceStatus contains derived information about an API server
///
/// Properties:
/// * [conditions] - Current service state of apiService.
@BuiltValue()
abstract class IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus implements Built<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus, IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatusBuilder> {
  /// Current service state of apiService.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition>? get conditions;

  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus._();

  factory IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus([void updates(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatusBuilder b)]) = _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus> get serializer => _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatusSerializer();
}

class _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatusSerializer implements PrimitiveSerializer<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus> {
  @override
  final Iterable<Type> types = const [IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus, _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus];

  @override
  final String wireName = r'IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition)]),
          ) as BuiltList<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition>;
          result.conditions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatusBuilder();
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

