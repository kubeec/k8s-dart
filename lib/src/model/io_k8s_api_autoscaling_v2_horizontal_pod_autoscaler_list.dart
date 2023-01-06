//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_list_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_list.g.dart';

/// HorizontalPodAutoscalerList is a list of horizontal pod autoscaler objects.
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [items] - items is the list of horizontal pod autoscaler objects.
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
@BuiltValue()
abstract class IoK8sApiAutoscalingV2HorizontalPodAutoscalerList implements Built<IoK8sApiAutoscalingV2HorizontalPodAutoscalerList, IoK8sApiAutoscalingV2HorizontalPodAutoscalerListBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// items is the list of horizontal pod autoscaler objects.
  @BuiltValueField(wireName: r'items')
  BuiltList<IoK8sApiAutoscalingV2HorizontalPodAutoscaler> get items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ListMeta? get metadata;

  IoK8sApiAutoscalingV2HorizontalPodAutoscalerList._();

  factory IoK8sApiAutoscalingV2HorizontalPodAutoscalerList([void updates(IoK8sApiAutoscalingV2HorizontalPodAutoscalerListBuilder b)]) = _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2HorizontalPodAutoscalerListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2HorizontalPodAutoscalerList> get serializer => _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerListSerializer();
}

class _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerListSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2HorizontalPodAutoscalerList> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2HorizontalPodAutoscalerList, _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerList];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2HorizontalPodAutoscalerList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2HorizontalPodAutoscalerList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAutoscalingV2HorizontalPodAutoscaler)]),
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
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ListMeta),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV2HorizontalPodAutoscalerList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2HorizontalPodAutoscalerListBuilder result,
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
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAutoscalingV2HorizontalPodAutoscaler)]),
          ) as BuiltList<IoK8sApiAutoscalingV2HorizontalPodAutoscaler>;
          result.items.replace(valueDes);
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
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ListMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ListMeta;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV2HorizontalPodAutoscalerList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2HorizontalPodAutoscalerListBuilder();
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

