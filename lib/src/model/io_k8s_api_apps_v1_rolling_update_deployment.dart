//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_rolling_update_deployment.g.dart';

/// Spec to control the desired behavior of rolling update.
///
/// Properties:
/// * [maxSurge] - IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
/// * [maxUnavailable] - IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
@BuiltValue()
abstract class IoK8sApiAppsV1RollingUpdateDeployment implements Built<IoK8sApiAppsV1RollingUpdateDeployment, IoK8sApiAppsV1RollingUpdateDeploymentBuilder> {
  /// IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
  @BuiltValueField(wireName: r'maxSurge')
  String? get maxSurge;

  /// IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
  @BuiltValueField(wireName: r'maxUnavailable')
  String? get maxUnavailable;

  IoK8sApiAppsV1RollingUpdateDeployment._();

  factory IoK8sApiAppsV1RollingUpdateDeployment([void updates(IoK8sApiAppsV1RollingUpdateDeploymentBuilder b)]) = _$IoK8sApiAppsV1RollingUpdateDeployment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1RollingUpdateDeploymentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1RollingUpdateDeployment> get serializer => _$IoK8sApiAppsV1RollingUpdateDeploymentSerializer();
}

class _$IoK8sApiAppsV1RollingUpdateDeploymentSerializer implements PrimitiveSerializer<IoK8sApiAppsV1RollingUpdateDeployment> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1RollingUpdateDeployment, _$IoK8sApiAppsV1RollingUpdateDeployment];

  @override
  final String wireName = r'IoK8sApiAppsV1RollingUpdateDeployment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1RollingUpdateDeployment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxSurge != null) {
      yield r'maxSurge';
      yield serializers.serialize(
        object.maxSurge,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxUnavailable != null) {
      yield r'maxUnavailable';
      yield serializers.serialize(
        object.maxUnavailable,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1RollingUpdateDeployment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1RollingUpdateDeploymentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxSurge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxSurge = valueDes;
          break;
        case r'maxUnavailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxUnavailable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAppsV1RollingUpdateDeployment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1RollingUpdateDeploymentBuilder();
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

