//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_apps_v1_rolling_update_deployment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_deployment_strategy.g.dart';

/// DeploymentStrategy describes how to replace existing pods with new ones.
///
/// Properties:
/// * [rollingUpdate] 
/// * [type] - Type of deployment. Can be \"Recreate\" or \"RollingUpdate\". Default is RollingUpdate.  
@BuiltValue()
abstract class IoK8sApiAppsV1DeploymentStrategy implements Built<IoK8sApiAppsV1DeploymentStrategy, IoK8sApiAppsV1DeploymentStrategyBuilder> {
  @BuiltValueField(wireName: r'rollingUpdate')
  IoK8sApiAppsV1RollingUpdateDeployment? get rollingUpdate;

  /// Type of deployment. Can be \"Recreate\" or \"RollingUpdate\". Default is RollingUpdate.  
  @BuiltValueField(wireName: r'type')
  String? get type;

  IoK8sApiAppsV1DeploymentStrategy._();

  factory IoK8sApiAppsV1DeploymentStrategy([void updates(IoK8sApiAppsV1DeploymentStrategyBuilder b)]) = _$IoK8sApiAppsV1DeploymentStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1DeploymentStrategyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1DeploymentStrategy> get serializer => _$IoK8sApiAppsV1DeploymentStrategySerializer();
}

class _$IoK8sApiAppsV1DeploymentStrategySerializer implements PrimitiveSerializer<IoK8sApiAppsV1DeploymentStrategy> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1DeploymentStrategy, _$IoK8sApiAppsV1DeploymentStrategy];

  @override
  final String wireName = r'IoK8sApiAppsV1DeploymentStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1DeploymentStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rollingUpdate != null) {
      yield r'rollingUpdate';
      yield serializers.serialize(
        object.rollingUpdate,
        specifiedType: const FullType(IoK8sApiAppsV1RollingUpdateDeployment),
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
    IoK8sApiAppsV1DeploymentStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1DeploymentStrategyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rollingUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAppsV1RollingUpdateDeployment),
          ) as IoK8sApiAppsV1RollingUpdateDeployment;
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
  IoK8sApiAppsV1DeploymentStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1DeploymentStrategyBuilder();
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

