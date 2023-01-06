//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_external_documentation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_validation_rule.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_json_schema_props.g.dart';

/// JSONSchemaProps is a JSON-Schema following Specification Draft 4 (http://json-schema.org/).
///
/// Properties:
/// * [dollarRef] 
/// * [dollarSchema] 
/// * [additionalItems] - JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property.
/// * [additionalProperties] - JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property.
/// * [allOf] 
/// * [anyOf] 
/// * [default_] - JSON represents any valid JSON value. These types are supported: bool, int64, float64, string, []interface{}, map[string]interface{} and nil.
/// * [definitions] 
/// * [dependencies] 
/// * [description] 
/// * [enum_] 
/// * [example] - JSON represents any valid JSON value. These types are supported: bool, int64, float64, string, []interface{}, map[string]interface{} and nil.
/// * [exclusiveMaximum] 
/// * [exclusiveMinimum] 
/// * [externalDocs] 
/// * [format] - format is an OpenAPI v3 format string. Unknown formats are ignored. The following formats are validated:  - bsonobjectid: a bson object ID, i.e. a 24 characters hex string - uri: an URI as parsed by Golang net/url.ParseRequestURI - email: an email address as parsed by Golang net/mail.ParseAddress - hostname: a valid representation for an Internet host name, as defined by RFC 1034, section 3.1 [RFC1034]. - ipv4: an IPv4 IP as parsed by Golang net.ParseIP - ipv6: an IPv6 IP as parsed by Golang net.ParseIP - cidr: a CIDR as parsed by Golang net.ParseCIDR - mac: a MAC address as parsed by Golang net.ParseMAC - uuid: an UUID that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid3: an UUID3 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?3[0-9a-f]{3}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid4: an UUID4 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - uuid5: an UUID5 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?5[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - isbn: an ISBN10 or ISBN13 number string like \"0321751043\" or \"978-0321751041\" - isbn10: an ISBN10 number string like \"0321751043\" - isbn13: an ISBN13 number string like \"978-0321751041\" - creditcard: a credit card number defined by the regex ^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\\d{3})\\d{11})$ with any non digit characters mixed in - ssn: a U.S. social security number following the regex ^\\d{3}[- ]?\\d{2}[- ]?\\d{4}$ - hexcolor: an hexadecimal color code like \"#FFFFFF: following the regex ^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$ - rgbcolor: an RGB color code like rgb like \"rgb(255,255,2559\" - byte: base64 encoded binary data - password: any kind of string - date: a date string like \"2006-01-02\" as defined by full-date in RFC3339 - duration: a duration string like \"22 ns\" as parsed by Golang time.ParseDuration or compatible with Scala duration format - datetime: a date time string like \"2014-12-15T19:30:20.000Z\" as defined by date-time in RFC3339.
/// * [id] 
/// * [items] - JSONSchemaPropsOrArray represents a value that can either be a JSONSchemaProps or an array of JSONSchemaProps. Mainly here for serialization purposes.
/// * [maxItems] 
/// * [maxLength] 
/// * [maxProperties] 
/// * [maximum] 
/// * [minItems] 
/// * [minLength] 
/// * [minProperties] 
/// * [minimum] 
/// * [multipleOf] 
/// * [not] 
/// * [nullable] 
/// * [oneOf] 
/// * [pattern] 
/// * [patternProperties] 
/// * [properties] 
/// * [required_] 
/// * [title] 
/// * [type] 
/// * [uniqueItems] 
/// * [xKubernetesEmbeddedResource] - x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).
/// * [xKubernetesIntOrString] - x-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:  1) anyOf:    - type: integer    - type: string 2) allOf:    - anyOf:      - type: integer      - type: string    - ... zero or more
/// * [xKubernetesListMapKeys] - x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.  This tag MUST only be used on lists that have the \"x-kubernetes-list-type\" extension set to \"map\". Also, the values specified for this attribute must be a scalar typed field of the child structure (no nesting is supported).  The properties specified must either be required or have a default value, to ensure those properties are present for all list items.
/// * [xKubernetesListType] - x-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:  1) `atomic`: the list is treated as a single entity, like a scalar.      Atomic lists will be entirely replaced when updated. This extension      may be used on any type of list (struct, scalar, ...). 2) `set`:      Sets are lists that must not have multiple items with the same value. Each      value must be a scalar, an object with x-kubernetes-map-type `atomic` or an      array with x-kubernetes-list-type `atomic`. 3) `map`:      These lists are like maps in that their elements have a non-index key      used to identify them. Order is preserved upon merge. The map tag      must only be used on a list with elements of type object. Defaults to atomic for arrays.
/// * [xKubernetesMapType] - x-kubernetes-map-type annotates an object to further describe its topology. This extension must only be used when type is object and may have 2 possible values:  1) `granular`:      These maps are actual maps (key-value pairs) and each fields are independent      from each other (they can each be manipulated by separate actors). This is      the default behaviour for all maps. 2) `atomic`: the list is treated as a single entity, like a scalar.      Atomic maps will be entirely replaced when updated.
/// * [xKubernetesPreserveUnknownFields] - x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.
/// * [xKubernetesValidations] - x-kubernetes-validations describes a list of validation rules written in the CEL expression language. This field is an alpha-level. Using this field requires the feature gate `CustomResourceValidationExpressions` to be enabled.
@BuiltValue()
abstract class IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps implements Built<IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps, IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaPropsBuilder> {
  @BuiltValueField(wireName: r'$ref')
  String? get dollarRef;

  @BuiltValueField(wireName: r'$schema')
  String? get dollarSchema;

  /// JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property.
  @BuiltValueField(wireName: r'additionalItems')
  JsonObject? get additionalItems;

  /// JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property.
  @BuiltValueField(wireName: r'additionalProperties')
  JsonObject? get additionalProperties;

  @BuiltValueField(wireName: r'allOf')
  BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>? get allOf;

  @BuiltValueField(wireName: r'anyOf')
  BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>? get anyOf;

  /// JSON represents any valid JSON value. These types are supported: bool, int64, float64, string, []interface{}, map[string]interface{} and nil.
  @BuiltValueField(wireName: r'default')
  JsonObject? get default_;

  @BuiltValueField(wireName: r'definitions')
  BuiltMap<String, IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>? get definitions;

  @BuiltValueField(wireName: r'dependencies')
  BuiltMap<String, JsonObject>? get dependencies;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'enum')
  BuiltList<JsonObject>? get enum_;

  /// JSON represents any valid JSON value. These types are supported: bool, int64, float64, string, []interface{}, map[string]interface{} and nil.
  @BuiltValueField(wireName: r'example')
  JsonObject? get example;

  @BuiltValueField(wireName: r'exclusiveMaximum')
  bool? get exclusiveMaximum;

  @BuiltValueField(wireName: r'exclusiveMinimum')
  bool? get exclusiveMinimum;

  @BuiltValueField(wireName: r'externalDocs')
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation? get externalDocs;

  /// format is an OpenAPI v3 format string. Unknown formats are ignored. The following formats are validated:  - bsonobjectid: a bson object ID, i.e. a 24 characters hex string - uri: an URI as parsed by Golang net/url.ParseRequestURI - email: an email address as parsed by Golang net/mail.ParseAddress - hostname: a valid representation for an Internet host name, as defined by RFC 1034, section 3.1 [RFC1034]. - ipv4: an IPv4 IP as parsed by Golang net.ParseIP - ipv6: an IPv6 IP as parsed by Golang net.ParseIP - cidr: a CIDR as parsed by Golang net.ParseCIDR - mac: a MAC address as parsed by Golang net.ParseMAC - uuid: an UUID that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid3: an UUID3 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?3[0-9a-f]{3}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid4: an UUID4 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - uuid5: an UUID5 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?5[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - isbn: an ISBN10 or ISBN13 number string like \"0321751043\" or \"978-0321751041\" - isbn10: an ISBN10 number string like \"0321751043\" - isbn13: an ISBN13 number string like \"978-0321751041\" - creditcard: a credit card number defined by the regex ^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\\d{3})\\d{11})$ with any non digit characters mixed in - ssn: a U.S. social security number following the regex ^\\d{3}[- ]?\\d{2}[- ]?\\d{4}$ - hexcolor: an hexadecimal color code like \"#FFFFFF: following the regex ^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$ - rgbcolor: an RGB color code like rgb like \"rgb(255,255,2559\" - byte: base64 encoded binary data - password: any kind of string - date: a date string like \"2006-01-02\" as defined by full-date in RFC3339 - duration: a duration string like \"22 ns\" as parsed by Golang time.ParseDuration or compatible with Scala duration format - datetime: a date time string like \"2014-12-15T19:30:20.000Z\" as defined by date-time in RFC3339.
  @BuiltValueField(wireName: r'format')
  String? get format;

  @BuiltValueField(wireName: r'id')
  String? get id;

  /// JSONSchemaPropsOrArray represents a value that can either be a JSONSchemaProps or an array of JSONSchemaProps. Mainly here for serialization purposes.
  @BuiltValueField(wireName: r'items')
  JsonObject? get items;

  @BuiltValueField(wireName: r'maxItems')
  int? get maxItems;

  @BuiltValueField(wireName: r'maxLength')
  int? get maxLength;

  @BuiltValueField(wireName: r'maxProperties')
  int? get maxProperties;

  @BuiltValueField(wireName: r'maximum')
  double? get maximum;

  @BuiltValueField(wireName: r'minItems')
  int? get minItems;

  @BuiltValueField(wireName: r'minLength')
  int? get minLength;

  @BuiltValueField(wireName: r'minProperties')
  int? get minProperties;

  @BuiltValueField(wireName: r'minimum')
  double? get minimum;

  @BuiltValueField(wireName: r'multipleOf')
  double? get multipleOf;

  @BuiltValueField(wireName: r'not')
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps? get not;

  @BuiltValueField(wireName: r'nullable')
  bool? get nullable;

  @BuiltValueField(wireName: r'oneOf')
  BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>? get oneOf;

  @BuiltValueField(wireName: r'pattern')
  String? get pattern;

  @BuiltValueField(wireName: r'patternProperties')
  BuiltMap<String, IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>? get patternProperties;

  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>? get properties;

  @BuiltValueField(wireName: r'required')
  BuiltList<String>? get required_;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'uniqueItems')
  bool? get uniqueItems;

  /// x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).
  @BuiltValueField(wireName: r'x-kubernetes-embedded-resource')
  bool? get xKubernetesEmbeddedResource;

  /// x-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:  1) anyOf:    - type: integer    - type: string 2) allOf:    - anyOf:      - type: integer      - type: string    - ... zero or more
  @BuiltValueField(wireName: r'x-kubernetes-int-or-string')
  bool? get xKubernetesIntOrString;

  /// x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.  This tag MUST only be used on lists that have the \"x-kubernetes-list-type\" extension set to \"map\". Also, the values specified for this attribute must be a scalar typed field of the child structure (no nesting is supported).  The properties specified must either be required or have a default value, to ensure those properties are present for all list items.
  @BuiltValueField(wireName: r'x-kubernetes-list-map-keys')
  BuiltList<String>? get xKubernetesListMapKeys;

  /// x-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:  1) `atomic`: the list is treated as a single entity, like a scalar.      Atomic lists will be entirely replaced when updated. This extension      may be used on any type of list (struct, scalar, ...). 2) `set`:      Sets are lists that must not have multiple items with the same value. Each      value must be a scalar, an object with x-kubernetes-map-type `atomic` or an      array with x-kubernetes-list-type `atomic`. 3) `map`:      These lists are like maps in that their elements have a non-index key      used to identify them. Order is preserved upon merge. The map tag      must only be used on a list with elements of type object. Defaults to atomic for arrays.
  @BuiltValueField(wireName: r'x-kubernetes-list-type')
  String? get xKubernetesListType;

  /// x-kubernetes-map-type annotates an object to further describe its topology. This extension must only be used when type is object and may have 2 possible values:  1) `granular`:      These maps are actual maps (key-value pairs) and each fields are independent      from each other (they can each be manipulated by separate actors). This is      the default behaviour for all maps. 2) `atomic`: the list is treated as a single entity, like a scalar.      Atomic maps will be entirely replaced when updated.
  @BuiltValueField(wireName: r'x-kubernetes-map-type')
  String? get xKubernetesMapType;

  /// x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.
  @BuiltValueField(wireName: r'x-kubernetes-preserve-unknown-fields')
  bool? get xKubernetesPreserveUnknownFields;

  /// x-kubernetes-validations describes a list of validation rules written in the CEL expression language. This field is an alpha-level. Using this field requires the feature gate `CustomResourceValidationExpressions` to be enabled.
  @BuiltValueField(wireName: r'x-kubernetes-validations')
  BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1ValidationRule>? get xKubernetesValidations;

  IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps._();

  factory IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps([void updates(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaPropsBuilder b)]) = _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaPropsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps> get serializer => _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaPropsSerializer();
}

class _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaPropsSerializer implements PrimitiveSerializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps> {
  @override
  final Iterable<Type> types = const [IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps, _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps];

  @override
  final String wireName = r'IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dollarRef != null) {
      yield r'$ref';
      yield serializers.serialize(
        object.dollarRef,
        specifiedType: const FullType(String),
      );
    }
    if (object.dollarSchema != null) {
      yield r'$schema';
      yield serializers.serialize(
        object.dollarSchema,
        specifiedType: const FullType(String),
      );
    }
    if (object.additionalItems != null) {
      yield r'additionalItems';
      yield serializers.serialize(
        object.additionalItems,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.additionalProperties != null) {
      yield r'additionalProperties';
      yield serializers.serialize(
        object.additionalProperties,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.allOf != null) {
      yield r'allOf';
      yield serializers.serialize(
        object.allOf,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
      );
    }
    if (object.anyOf != null) {
      yield r'anyOf';
      yield serializers.serialize(
        object.anyOf,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.definitions != null) {
      yield r'definitions';
      yield serializers.serialize(
        object.definitions,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
      );
    }
    if (object.dependencies != null) {
      yield r'dependencies';
      yield serializers.serialize(
        object.dependencies,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)]),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.enum_ != null) {
      yield r'enum';
      yield serializers.serialize(
        object.enum_,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
    if (object.example != null) {
      yield r'example';
      yield serializers.serialize(
        object.example,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.exclusiveMaximum != null) {
      yield r'exclusiveMaximum';
      yield serializers.serialize(
        object.exclusiveMaximum,
        specifiedType: const FullType(bool),
      );
    }
    if (object.exclusiveMinimum != null) {
      yield r'exclusiveMinimum';
      yield serializers.serialize(
        object.exclusiveMinimum,
        specifiedType: const FullType(bool),
      );
    }
    if (object.externalDocs != null) {
      yield r'externalDocs';
      yield serializers.serialize(
        object.externalDocs,
        specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.maxItems != null) {
      yield r'maxItems';
      yield serializers.serialize(
        object.maxItems,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxLength != null) {
      yield r'maxLength';
      yield serializers.serialize(
        object.maxLength,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxProperties != null) {
      yield r'maxProperties';
      yield serializers.serialize(
        object.maxProperties,
        specifiedType: const FullType(int),
      );
    }
    if (object.maximum != null) {
      yield r'maximum';
      yield serializers.serialize(
        object.maximum,
        specifiedType: const FullType(double),
      );
    }
    if (object.minItems != null) {
      yield r'minItems';
      yield serializers.serialize(
        object.minItems,
        specifiedType: const FullType(int),
      );
    }
    if (object.minLength != null) {
      yield r'minLength';
      yield serializers.serialize(
        object.minLength,
        specifiedType: const FullType(int),
      );
    }
    if (object.minProperties != null) {
      yield r'minProperties';
      yield serializers.serialize(
        object.minProperties,
        specifiedType: const FullType(int),
      );
    }
    if (object.minimum != null) {
      yield r'minimum';
      yield serializers.serialize(
        object.minimum,
        specifiedType: const FullType(double),
      );
    }
    if (object.multipleOf != null) {
      yield r'multipleOf';
      yield serializers.serialize(
        object.multipleOf,
        specifiedType: const FullType(double),
      );
    }
    if (object.not != null) {
      yield r'not';
      yield serializers.serialize(
        object.not,
        specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps),
      );
    }
    if (object.nullable != null) {
      yield r'nullable';
      yield serializers.serialize(
        object.nullable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.oneOf != null) {
      yield r'oneOf';
      yield serializers.serialize(
        object.oneOf,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
      );
    }
    if (object.pattern != null) {
      yield r'pattern';
      yield serializers.serialize(
        object.pattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.patternProperties != null) {
      yield r'patternProperties';
      yield serializers.serialize(
        object.patternProperties,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
      );
    }
    if (object.properties != null) {
      yield r'properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
      );
    }
    if (object.required_ != null) {
      yield r'required';
      yield serializers.serialize(
        object.required_,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.uniqueItems != null) {
      yield r'uniqueItems';
      yield serializers.serialize(
        object.uniqueItems,
        specifiedType: const FullType(bool),
      );
    }
    if (object.xKubernetesEmbeddedResource != null) {
      yield r'x-kubernetes-embedded-resource';
      yield serializers.serialize(
        object.xKubernetesEmbeddedResource,
        specifiedType: const FullType(bool),
      );
    }
    if (object.xKubernetesIntOrString != null) {
      yield r'x-kubernetes-int-or-string';
      yield serializers.serialize(
        object.xKubernetesIntOrString,
        specifiedType: const FullType(bool),
      );
    }
    if (object.xKubernetesListMapKeys != null) {
      yield r'x-kubernetes-list-map-keys';
      yield serializers.serialize(
        object.xKubernetesListMapKeys,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.xKubernetesListType != null) {
      yield r'x-kubernetes-list-type';
      yield serializers.serialize(
        object.xKubernetesListType,
        specifiedType: const FullType(String),
      );
    }
    if (object.xKubernetesMapType != null) {
      yield r'x-kubernetes-map-type';
      yield serializers.serialize(
        object.xKubernetesMapType,
        specifiedType: const FullType(String),
      );
    }
    if (object.xKubernetesPreserveUnknownFields != null) {
      yield r'x-kubernetes-preserve-unknown-fields';
      yield serializers.serialize(
        object.xKubernetesPreserveUnknownFields,
        specifiedType: const FullType(bool),
      );
    }
    if (object.xKubernetesValidations != null) {
      yield r'x-kubernetes-validations';
      yield serializers.serialize(
        object.xKubernetesValidations,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1ValidationRule)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaPropsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'$ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dollarRef = valueDes;
          break;
        case r'$schema':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dollarSchema = valueDes;
          break;
        case r'additionalItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.additionalItems = valueDes;
          break;
        case r'additionalProperties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.additionalProperties = valueDes;
          break;
        case r'allOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
          ) as BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>;
          result.allOf.replace(valueDes);
          break;
        case r'anyOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
          ) as BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>;
          result.anyOf.replace(valueDes);
          break;
        case r'default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.default_ = valueDes;
          break;
        case r'definitions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
          ) as BuiltMap<String, IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>;
          result.definitions.replace(valueDes);
          break;
        case r'dependencies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)]),
          ) as BuiltMap<String, JsonObject>;
          result.dependencies.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'enum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.enum_.replace(valueDes);
          break;
        case r'example':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.example = valueDes;
          break;
        case r'exclusiveMaximum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.exclusiveMaximum = valueDes;
          break;
        case r'exclusiveMinimum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.exclusiveMinimum = valueDes;
          break;
        case r'externalDocs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation),
          ) as IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation;
          result.externalDocs.replace(valueDes);
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.format = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.items = valueDes;
          break;
        case r'maxItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxItems = valueDes;
          break;
        case r'maxLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxLength = valueDes;
          break;
        case r'maxProperties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxProperties = valueDes;
          break;
        case r'maximum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.maximum = valueDes;
          break;
        case r'minItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minItems = valueDes;
          break;
        case r'minLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minLength = valueDes;
          break;
        case r'minProperties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minProperties = valueDes;
          break;
        case r'minimum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.minimum = valueDes;
          break;
        case r'multipleOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.multipleOf = valueDes;
          break;
        case r'not':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps),
          ) as IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps;
          result.not.replace(valueDes);
          break;
        case r'nullable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.nullable = valueDes;
          break;
        case r'oneOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
          ) as BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>;
          result.oneOf.replace(valueDes);
          break;
        case r'pattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pattern = valueDes;
          break;
        case r'patternProperties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
          ) as BuiltMap<String, IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>;
          result.patternProperties.replace(valueDes);
          break;
        case r'properties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps)]),
          ) as BuiltMap<String, IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps>;
          result.properties.replace(valueDes);
          break;
        case r'required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.required_.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'uniqueItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.uniqueItems = valueDes;
          break;
        case r'x-kubernetes-embedded-resource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.xKubernetesEmbeddedResource = valueDes;
          break;
        case r'x-kubernetes-int-or-string':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.xKubernetesIntOrString = valueDes;
          break;
        case r'x-kubernetes-list-map-keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.xKubernetesListMapKeys.replace(valueDes);
          break;
        case r'x-kubernetes-list-type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.xKubernetesListType = valueDes;
          break;
        case r'x-kubernetes-map-type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.xKubernetesMapType = valueDes;
          break;
        case r'x-kubernetes-preserve-unknown-fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.xKubernetesPreserveUnknownFields = valueDes;
          break;
        case r'x-kubernetes-validations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1ValidationRule)]),
          ) as BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1ValidationRule>;
          result.xKubernetesValidations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaPropsBuilder();
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

