//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_lifecycle_handler.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_lifecycle.g.dart';

/// Lifecycle describes actions that the management system should take in response to container lifecycle events. For the PostStart and PreStop lifecycle handlers, management of the container blocks until the action is complete, unless the container process fails, in which case the handler is aborted.
///
/// Properties:
/// * [postStart] 
/// * [preStop] 
@BuiltValue()
abstract class IoK8sApiCoreV1Lifecycle implements Built<IoK8sApiCoreV1Lifecycle, IoK8sApiCoreV1LifecycleBuilder> {
  @BuiltValueField(wireName: r'postStart')
  IoK8sApiCoreV1LifecycleHandler? get postStart;

  @BuiltValueField(wireName: r'preStop')
  IoK8sApiCoreV1LifecycleHandler? get preStop;

  IoK8sApiCoreV1Lifecycle._();

  factory IoK8sApiCoreV1Lifecycle([void updates(IoK8sApiCoreV1LifecycleBuilder b)]) = _$IoK8sApiCoreV1Lifecycle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1LifecycleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1Lifecycle> get serializer => _$IoK8sApiCoreV1LifecycleSerializer();
}

class _$IoK8sApiCoreV1LifecycleSerializer implements PrimitiveSerializer<IoK8sApiCoreV1Lifecycle> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1Lifecycle, _$IoK8sApiCoreV1Lifecycle];

  @override
  final String wireName = r'IoK8sApiCoreV1Lifecycle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1Lifecycle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.postStart != null) {
      yield r'postStart';
      yield serializers.serialize(
        object.postStart,
        specifiedType: const FullType(IoK8sApiCoreV1LifecycleHandler),
      );
    }
    if (object.preStop != null) {
      yield r'preStop';
      yield serializers.serialize(
        object.preStop,
        specifiedType: const FullType(IoK8sApiCoreV1LifecycleHandler),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1Lifecycle object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1LifecycleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'postStart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1LifecycleHandler),
          ) as IoK8sApiCoreV1LifecycleHandler;
          result.postStart.replace(valueDes);
          break;
        case r'preStop':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1LifecycleHandler),
          ) as IoK8sApiCoreV1LifecycleHandler;
          result.preStop.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1Lifecycle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1LifecycleBuilder();
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

