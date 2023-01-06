//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_names.g.dart';

/// CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
///
/// Properties:
/// * [categories] - categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
/// * [kind] - kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
/// * [listKind] - listKind is the serialized kind of the list for this resource. Defaults to \"`kind`List\".
/// * [plural] - plural is the plural name of the resource to serve. The custom resources are served under `/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.
/// * [shortNames] - shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
/// * [singular] - singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
@BuiltValue()
abstract class IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames implements Built<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames, IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNamesBuilder> {
  /// categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
  @BuiltValueField(wireName: r'categories')
  BuiltList<String>? get categories;

  /// kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// listKind is the serialized kind of the list for this resource. Defaults to \"`kind`List\".
  @BuiltValueField(wireName: r'listKind')
  String? get listKind;

  /// plural is the plural name of the resource to serve. The custom resources are served under `/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.
  @BuiltValueField(wireName: r'plural')
  String get plural;

  /// shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
  @BuiltValueField(wireName: r'shortNames')
  BuiltList<String>? get shortNames;

  /// singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
  @BuiltValueField(wireName: r'singular')
  String? get singular;

  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames._();

  factory IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames([void updates(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNamesBuilder b)]) = _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNamesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames> get serializer => _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNamesSerializer();
}

class _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNamesSerializer implements PrimitiveSerializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames> {
  @override
  final Iterable<Type> types = const [IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames, _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames];

  @override
  final String wireName = r'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    if (object.listKind != null) {
      yield r'listKind';
      yield serializers.serialize(
        object.listKind,
        specifiedType: const FullType(String),
      );
    }
    yield r'plural';
    yield serializers.serialize(
      object.plural,
      specifiedType: const FullType(String),
    );
    if (object.shortNames != null) {
      yield r'shortNames';
      yield serializers.serialize(
        object.shortNames,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.singular != null) {
      yield r'singular';
      yield serializers.serialize(
        object.singular,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNamesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.categories.replace(valueDes);
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'listKind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.listKind = valueDes;
          break;
        case r'plural':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.plural = valueDes;
          break;
        case r'shortNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.shortNames.replace(valueDes);
          break;
        case r'singular':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.singular = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNamesBuilder();
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

