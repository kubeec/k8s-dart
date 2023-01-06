//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_template_spec.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_daemon_set_update_strategy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_daemon_set_spec.g.dart';

/// DaemonSetSpec is the specification of a daemon set.
///
/// Properties:
/// * [minReadySeconds] - The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
/// * [revisionHistoryLimit] - The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
/// * [selector] 
/// * [template] 
/// * [updateStrategy] 
@BuiltValue()
abstract class IoK8sApiAppsV1DaemonSetSpec implements Built<IoK8sApiAppsV1DaemonSetSpec, IoK8sApiAppsV1DaemonSetSpecBuilder> {
  /// The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  @BuiltValueField(wireName: r'minReadySeconds')
  int? get minReadySeconds;

  /// The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  @BuiltValueField(wireName: r'revisionHistoryLimit')
  int? get revisionHistoryLimit;

  @BuiltValueField(wireName: r'selector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector get selector;

  @BuiltValueField(wireName: r'template')
  IoK8sApiCoreV1PodTemplateSpec get template;

  @BuiltValueField(wireName: r'updateStrategy')
  IoK8sApiAppsV1DaemonSetUpdateStrategy? get updateStrategy;

  IoK8sApiAppsV1DaemonSetSpec._();

  factory IoK8sApiAppsV1DaemonSetSpec([void updates(IoK8sApiAppsV1DaemonSetSpecBuilder b)]) = _$IoK8sApiAppsV1DaemonSetSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1DaemonSetSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1DaemonSetSpec> get serializer => _$IoK8sApiAppsV1DaemonSetSpecSerializer();
}

class _$IoK8sApiAppsV1DaemonSetSpecSerializer implements PrimitiveSerializer<IoK8sApiAppsV1DaemonSetSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1DaemonSetSpec, _$IoK8sApiAppsV1DaemonSetSpec];

  @override
  final String wireName = r'IoK8sApiAppsV1DaemonSetSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1DaemonSetSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minReadySeconds != null) {
      yield r'minReadySeconds';
      yield serializers.serialize(
        object.minReadySeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.revisionHistoryLimit != null) {
      yield r'revisionHistoryLimit';
      yield serializers.serialize(
        object.revisionHistoryLimit,
        specifiedType: const FullType(int),
      );
    }
    yield r'selector';
    yield serializers.serialize(
      object.selector,
      specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
    );
    yield r'template';
    yield serializers.serialize(
      object.template,
      specifiedType: const FullType(IoK8sApiCoreV1PodTemplateSpec),
    );
    if (object.updateStrategy != null) {
      yield r'updateStrategy';
      yield serializers.serialize(
        object.updateStrategy,
        specifiedType: const FullType(IoK8sApiAppsV1DaemonSetUpdateStrategy),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1DaemonSetSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1DaemonSetSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minReadySeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minReadySeconds = valueDes;
          break;
        case r'revisionHistoryLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.revisionHistoryLimit = valueDes;
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.selector.replace(valueDes);
          break;
        case r'template':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PodTemplateSpec),
          ) as IoK8sApiCoreV1PodTemplateSpec;
          result.template.replace(valueDes);
          break;
        case r'updateStrategy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAppsV1DaemonSetUpdateStrategy),
          ) as IoK8sApiAppsV1DaemonSetUpdateStrategy;
          result.updateStrategy.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAppsV1DaemonSetSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1DaemonSetSpecBuilder();
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

