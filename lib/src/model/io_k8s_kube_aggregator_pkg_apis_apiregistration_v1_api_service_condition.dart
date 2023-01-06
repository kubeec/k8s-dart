//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service_condition.g.dart';

/// APIServiceCondition describes the state of an APIService at a particular point
///
/// Properties:
/// * [lastTransitionTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [message] - Human-readable message indicating details about last transition.
/// * [reason] - Unique, one-word, CamelCase reason for the condition's last transition.
/// * [status] - Status is the status of the condition. Can be True, False, Unknown.
/// * [type] - Type is the type of the condition.
@BuiltValue()
abstract class IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition implements Built<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition, IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceConditionBuilder> {
  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastTransitionTime')
  DateTime? get lastTransitionTime;

  /// Human-readable message indicating details about last transition.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Unique, one-word, CamelCase reason for the condition's last transition.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Status is the status of the condition. Can be True, False, Unknown.
  @BuiltValueField(wireName: r'status')
  String get status;

  /// Type is the type of the condition.
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition._();

  factory IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition([void updates(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceConditionBuilder b)]) = _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition> get serializer => _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceConditionSerializer();
}

class _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceConditionSerializer implements PrimitiveSerializer<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition> {
  @override
  final Iterable<Type> types = const [IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition, _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition];

  @override
  final String wireName = r'IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lastTransitionTime != null) {
      yield r'lastTransitionTime';
      yield serializers.serialize(
        object.lastTransitionTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lastTransitionTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastTransitionTime = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
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
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceConditionBuilder();
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

