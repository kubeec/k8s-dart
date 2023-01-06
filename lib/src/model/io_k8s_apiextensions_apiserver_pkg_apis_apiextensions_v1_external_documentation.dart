//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_external_documentation.g.dart';

/// ExternalDocumentation allows referencing an external resource for extended documentation.
///
/// Properties:
/// * [description] 
/// * [url] 
@BuiltValue()
abstract class IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation implements Built<IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation, IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentationBuilder> {
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'url')
  String? get url;

  IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation._();

  factory IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation([void updates(IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentationBuilder b)]) = _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation> get serializer => _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentationSerializer();
}

class _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentationSerializer implements PrimitiveSerializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation> {
  @override
  final Iterable<Type> types = const [IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation, _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation];

  @override
  final String wireName = r'IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentationBuilder();
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

