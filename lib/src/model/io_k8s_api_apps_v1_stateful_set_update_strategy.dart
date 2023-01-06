//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_apps_v1_rolling_update_stateful_set_strategy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_stateful_set_update_strategy.g.dart';

/// StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
///
/// Properties:
/// * [rollingUpdate] 
/// * [type] - Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.  
@BuiltValue()
abstract class IoK8sApiAppsV1StatefulSetUpdateStrategy implements Built<IoK8sApiAppsV1StatefulSetUpdateStrategy, IoK8sApiAppsV1StatefulSetUpdateStrategyBuilder> {
  @BuiltValueField(wireName: r'rollingUpdate')
  IoK8sApiAppsV1RollingUpdateStatefulSetStrategy? get rollingUpdate;

  /// Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.  
  @BuiltValueField(wireName: r'type')
  String? get type;

  IoK8sApiAppsV1StatefulSetUpdateStrategy._();

  factory IoK8sApiAppsV1StatefulSetUpdateStrategy([void updates(IoK8sApiAppsV1StatefulSetUpdateStrategyBuilder b)]) = _$IoK8sApiAppsV1StatefulSetUpdateStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1StatefulSetUpdateStrategyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1StatefulSetUpdateStrategy> get serializer => _$IoK8sApiAppsV1StatefulSetUpdateStrategySerializer();
}

class _$IoK8sApiAppsV1StatefulSetUpdateStrategySerializer implements PrimitiveSerializer<IoK8sApiAppsV1StatefulSetUpdateStrategy> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1StatefulSetUpdateStrategy, _$IoK8sApiAppsV1StatefulSetUpdateStrategy];

  @override
  final String wireName = r'IoK8sApiAppsV1StatefulSetUpdateStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1StatefulSetUpdateStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rollingUpdate != null) {
      yield r'rollingUpdate';
      yield serializers.serialize(
        object.rollingUpdate,
        specifiedType: const FullType(IoK8sApiAppsV1RollingUpdateStatefulSetStrategy),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1StatefulSetUpdateStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1StatefulSetUpdateStrategyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rollingUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAppsV1RollingUpdateStatefulSetStrategy),
          ) as IoK8sApiAppsV1RollingUpdateStatefulSetStrategy;
          result.rollingUpdate.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAppsV1StatefulSetUpdateStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1StatefulSetUpdateStrategyBuilder();
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

