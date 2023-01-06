//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_node_selector.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_class_parameters_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_resource_v1alpha1_resource_class.g.dart';

/// ResourceClass is used by administrators to influence how resources are allocated.  This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [driverName] - DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.  Resource drivers have a unique name in forward domain order (acme.example.com).
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [parametersRef] 
/// * [suitableNodes] 
@BuiltValue()
abstract class IoK8sApiResourceV1alpha1ResourceClass implements Built<IoK8sApiResourceV1alpha1ResourceClass, IoK8sApiResourceV1alpha1ResourceClassBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.  Resource drivers have a unique name in forward domain order (acme.example.com).
  @BuiltValueField(wireName: r'driverName')
  String get driverName;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  @BuiltValueField(wireName: r'parametersRef')
  IoK8sApiResourceV1alpha1ResourceClassParametersReference? get parametersRef;

  @BuiltValueField(wireName: r'suitableNodes')
  IoK8sApiCoreV1NodeSelector? get suitableNodes;

  IoK8sApiResourceV1alpha1ResourceClass._();

  factory IoK8sApiResourceV1alpha1ResourceClass([void updates(IoK8sApiResourceV1alpha1ResourceClassBuilder b)]) = _$IoK8sApiResourceV1alpha1ResourceClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiResourceV1alpha1ResourceClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiResourceV1alpha1ResourceClass> get serializer => _$IoK8sApiResourceV1alpha1ResourceClassSerializer();
}

class _$IoK8sApiResourceV1alpha1ResourceClassSerializer implements PrimitiveSerializer<IoK8sApiResourceV1alpha1ResourceClass> {
  @override
  final Iterable<Type> types = const [IoK8sApiResourceV1alpha1ResourceClass, _$IoK8sApiResourceV1alpha1ResourceClass];

  @override
  final String wireName = r'IoK8sApiResourceV1alpha1ResourceClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClass object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'driverName';
    yield serializers.serialize(
      object.driverName,
      specifiedType: const FullType(String),
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
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
      );
    }
    if (object.parametersRef != null) {
      yield r'parametersRef';
      yield serializers.serialize(
        object.parametersRef,
        specifiedType: const FullType(IoK8sApiResourceV1alpha1ResourceClassParametersReference),
      );
    }
    if (object.suitableNodes != null) {
      yield r'suitableNodes';
      yield serializers.serialize(
        object.suitableNodes,
        specifiedType: const FullType(IoK8sApiCoreV1NodeSelector),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiResourceV1alpha1ResourceClassBuilder result,
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
        case r'driverName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.driverName = valueDes;
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
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ObjectMeta;
          result.metadata.replace(valueDes);
          break;
        case r'parametersRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiResourceV1alpha1ResourceClassParametersReference),
          ) as IoK8sApiResourceV1alpha1ResourceClassParametersReference;
          result.parametersRef.replace(valueDes);
          break;
        case r'suitableNodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeSelector),
          ) as IoK8sApiCoreV1NodeSelector;
          result.suitableNodes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiResourceV1alpha1ResourceClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiResourceV1alpha1ResourceClassBuilder();
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

