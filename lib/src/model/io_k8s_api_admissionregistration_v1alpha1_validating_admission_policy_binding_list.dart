//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_validating_admission_policy_binding.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_list_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_admissionregistration_v1alpha1_validating_admission_policy_binding_list.g.dart';

/// ValidatingAdmissionPolicyBindingList is a list of ValidatingAdmissionPolicyBinding.
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [items] - List of PolicyBinding.
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
@BuiltValue()
abstract class IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList implements Built<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList, IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingListBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// List of PolicyBinding.
  @BuiltValueField(wireName: r'items')
  BuiltList<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding>? get items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ListMeta? get metadata;

  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList._();

  factory IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList([void updates(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingListBuilder b)]) = _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList> get serializer => _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingListSerializer();
}

class _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingListSerializer implements PrimitiveSerializer<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList> {
  @override
  final Iterable<Type> types = const [IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList, _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList];

  @override
  final String wireName = r'IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding)]),
      );
    }
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
    IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingListBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding)]),
          ) as BuiltList<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding>;
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
  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingListBuilder();
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

