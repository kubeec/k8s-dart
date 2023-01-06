//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_json_schema_props.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_validation.g.dart';

/// CustomResourceValidation is a list of validation methods for CustomResources.
///
/// Properties:
/// * [openAPIV3Schema] 
@BuiltValue()
abstract class IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation implements Built<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation, IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidationBuilder> {
  @BuiltValueField(wireName: r'openAPIV3Schema')
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps? get openAPIV3Schema;

  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation._();

  factory IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation([void updates(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidationBuilder b)]) = _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation> get serializer => _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidationSerializer();
}

class _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidationSerializer implements PrimitiveSerializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation> {
  @override
  final Iterable<Type> types = const [IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation, _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation];

  @override
  final String wireName = r'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.openAPIV3Schema != null) {
      yield r'openAPIV3Schema';
      yield serializers.serialize(
        object.openAPIV3Schema,
        specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'openAPIV3Schema':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps),
          ) as IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps;
          result.openAPIV3Schema.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidationBuilder();
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

