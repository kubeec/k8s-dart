//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_validation_rule.dart';
import 'package:k8s/src/model/v1_external_documentation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_json_schema_props.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1JSONSchemaProps {
  /// Returns a new [V1JSONSchemaProps] instance.
  V1JSONSchemaProps({

     this.dollarRef,

     this.dollarSchema,

     this.additionalItems,

     this.additionalProperties,

     this.allOf,

     this.anyOf,

     this.default_,

     this.definitions,

     this.dependencies,

     this.description,

     this.enum_,

     this.example,

     this.exclusiveMaximum,

     this.exclusiveMinimum,

     this.externalDocs,

     this.format,

     this.id,

     this.items,

     this.maxItems,

     this.maxLength,

     this.maxProperties,

     this.maximum,

     this.minItems,

     this.minLength,

     this.minProperties,

     this.minimum,

     this.multipleOf,

     this.not,

     this.nullable,

     this.oneOf,

     this.pattern,

     this.patternProperties,

     this.properties,

     this.required_,

     this.title,

     this.type,

     this.uniqueItems,

     this.xKubernetesEmbeddedResource,

     this.xKubernetesIntOrString,

     this.xKubernetesListMapKeys,

     this.xKubernetesListType,

     this.xKubernetesMapType,

     this.xKubernetesPreserveUnknownFields,

     this.xKubernetesValidations,
  });

  @JsonKey(
    
    name: r'$ref',
    required: false,
    includeIfNull: false
  )


  final String? dollarRef;



  @JsonKey(
    
    name: r'$schema',
    required: false,
    includeIfNull: false
  )


  final String? dollarSchema;



      /// JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property.
  @JsonKey(
    
    name: r'additionalItems',
    required: false,
    includeIfNull: false
  )


  final Object? additionalItems;



      /// JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property.
  @JsonKey(
    
    name: r'additionalProperties',
    required: false,
    includeIfNull: false
  )


  final Object? additionalProperties;



  @JsonKey(
    
    name: r'allOf',
    required: false,
    includeIfNull: false
  )


  final List<V1JSONSchemaProps>? allOf;



  @JsonKey(
    
    name: r'anyOf',
    required: false,
    includeIfNull: false
  )


  final List<V1JSONSchemaProps>? anyOf;



      /// default is a default value for undefined object fields. Defaulting is a beta feature under the CustomResourceDefaulting feature gate. Defaulting requires spec.preserveUnknownFields to be false.
  @JsonKey(
    
    name: r'default',
    required: false,
    includeIfNull: false
  )


  final Object? default_;



  @JsonKey(
    
    name: r'definitions',
    required: false,
    includeIfNull: false
  )


  final Map<String, V1JSONSchemaProps>? definitions;



  @JsonKey(
    
    name: r'dependencies',
    required: false,
    includeIfNull: false
  )


  final Map<String, Object>? dependencies;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false
  )


  final String? description;



  @JsonKey(
    
    name: r'enum',
    required: false,
    includeIfNull: false
  )


  final List<Object>? enum_;



      /// JSON represents any valid JSON value. These types are supported: bool, int64, float64, string, []interface{}, map[string]interface{} and nil.
  @JsonKey(
    
    name: r'example',
    required: false,
    includeIfNull: false
  )


  final Object? example;



  @JsonKey(
    
    name: r'exclusiveMaximum',
    required: false,
    includeIfNull: false
  )


  final bool? exclusiveMaximum;



  @JsonKey(
    
    name: r'exclusiveMinimum',
    required: false,
    includeIfNull: false
  )


  final bool? exclusiveMinimum;



  @JsonKey(
    
    name: r'externalDocs',
    required: false,
    includeIfNull: false
  )


  final V1ExternalDocumentation? externalDocs;



      /// format is an OpenAPI v3 format string. Unknown formats are ignored. The following formats are validated:  - bsonobjectid: a bson object ID, i.e. a 24 characters hex string - uri: an URI as parsed by Golang net/url.ParseRequestURI - email: an email address as parsed by Golang net/mail.ParseAddress - hostname: a valid representation for an Internet host name, as defined by RFC 1034, section 3.1 [RFC1034]. - ipv4: an IPv4 IP as parsed by Golang net.ParseIP - ipv6: an IPv6 IP as parsed by Golang net.ParseIP - cidr: a CIDR as parsed by Golang net.ParseCIDR - mac: a MAC address as parsed by Golang net.ParseMAC - uuid: an UUID that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid3: an UUID3 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?3[0-9a-f]{3}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid4: an UUID4 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - uuid5: an UUID5 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?5[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - isbn: an ISBN10 or ISBN13 number string like \"0321751043\" or \"978-0321751041\" - isbn10: an ISBN10 number string like \"0321751043\" - isbn13: an ISBN13 number string like \"978-0321751041\" - creditcard: a credit card number defined by the regex ^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\\d{3})\\d{11})$ with any non digit characters mixed in - ssn: a U.S. social security number following the regex ^\\d{3}[- ]?\\d{2}[- ]?\\d{4}$ - hexcolor: an hexadecimal color code like \"#FFFFFF: following the regex ^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$ - rgbcolor: an RGB color code like rgb like \"rgb(255,255,2559\" - byte: base64 encoded binary data - password: any kind of string - date: a date string like \"2006-01-02\" as defined by full-date in RFC3339 - duration: a duration string like \"22 ns\" as parsed by Golang time.ParseDuration or compatible with Scala duration format - datetime: a date time string like \"2014-12-15T19:30:20.000Z\" as defined by date-time in RFC3339.
  @JsonKey(
    
    name: r'format',
    required: false,
    includeIfNull: false
  )


  final String? format;



  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final String? id;



      /// JSONSchemaPropsOrArray represents a value that can either be a JSONSchemaProps or an array of JSONSchemaProps. Mainly here for serialization purposes.
  @JsonKey(
    
    name: r'items',
    required: false,
    includeIfNull: false
  )


  final Object? items;



  @JsonKey(
    
    name: r'maxItems',
    required: false,
    includeIfNull: false
  )


  final int? maxItems;



  @JsonKey(
    
    name: r'maxLength',
    required: false,
    includeIfNull: false
  )


  final int? maxLength;



  @JsonKey(
    
    name: r'maxProperties',
    required: false,
    includeIfNull: false
  )


  final int? maxProperties;



  @JsonKey(
    
    name: r'maximum',
    required: false,
    includeIfNull: false
  )


  final double? maximum;



  @JsonKey(
    
    name: r'minItems',
    required: false,
    includeIfNull: false
  )


  final int? minItems;



  @JsonKey(
    
    name: r'minLength',
    required: false,
    includeIfNull: false
  )


  final int? minLength;



  @JsonKey(
    
    name: r'minProperties',
    required: false,
    includeIfNull: false
  )


  final int? minProperties;



  @JsonKey(
    
    name: r'minimum',
    required: false,
    includeIfNull: false
  )


  final double? minimum;



  @JsonKey(
    
    name: r'multipleOf',
    required: false,
    includeIfNull: false
  )


  final double? multipleOf;



  @JsonKey(
    
    name: r'not',
    required: false,
    includeIfNull: false
  )


  final V1JSONSchemaProps? not;



  @JsonKey(
    
    name: r'nullable',
    required: false,
    includeIfNull: false
  )


  final bool? nullable;



  @JsonKey(
    
    name: r'oneOf',
    required: false,
    includeIfNull: false
  )


  final List<V1JSONSchemaProps>? oneOf;



  @JsonKey(
    
    name: r'pattern',
    required: false,
    includeIfNull: false
  )


  final String? pattern;



  @JsonKey(
    
    name: r'patternProperties',
    required: false,
    includeIfNull: false
  )


  final Map<String, V1JSONSchemaProps>? patternProperties;



  @JsonKey(
    
    name: r'properties',
    required: false,
    includeIfNull: false
  )


  final Map<String, V1JSONSchemaProps>? properties;



  @JsonKey(
    
    name: r'required',
    required: false,
    includeIfNull: false
  )


  final List<String>? required_;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false
  )


  final String? title;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final String? type;



  @JsonKey(
    
    name: r'uniqueItems',
    required: false,
    includeIfNull: false
  )


  final bool? uniqueItems;



      /// x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).
  @JsonKey(
    
    name: r'x-kubernetes-embedded-resource',
    required: false,
    includeIfNull: false
  )


  final bool? xKubernetesEmbeddedResource;



      /// x-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:  1) anyOf:    - type: integer    - type: string 2) allOf:    - anyOf:      - type: integer      - type: string    - ... zero or more
  @JsonKey(
    
    name: r'x-kubernetes-int-or-string',
    required: false,
    includeIfNull: false
  )


  final bool? xKubernetesIntOrString;



      /// x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.  This tag MUST only be used on lists that have the \"x-kubernetes-list-type\" extension set to \"map\". Also, the values specified for this attribute must be a scalar typed field of the child structure (no nesting is supported).  The properties specified must either be required or have a default value, to ensure those properties are present for all list items.
  @JsonKey(
    
    name: r'x-kubernetes-list-map-keys',
    required: false,
    includeIfNull: false
  )


  final List<String>? xKubernetesListMapKeys;



      /// x-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:  1) `atomic`: the list is treated as a single entity, like a scalar.      Atomic lists will be entirely replaced when updated. This extension      may be used on any type of list (struct, scalar, ...). 2) `set`:      Sets are lists that must not have multiple items with the same value. Each      value must be a scalar, an object with x-kubernetes-map-type `atomic` or an      array with x-kubernetes-list-type `atomic`. 3) `map`:      These lists are like maps in that their elements have a non-index key      used to identify them. Order is preserved upon merge. The map tag      must only be used on a list with elements of type object. Defaults to atomic for arrays.
  @JsonKey(
    
    name: r'x-kubernetes-list-type',
    required: false,
    includeIfNull: false
  )


  final String? xKubernetesListType;



      /// x-kubernetes-map-type annotates an object to further describe its topology. This extension must only be used when type is object and may have 2 possible values:  1) `granular`:      These maps are actual maps (key-value pairs) and each fields are independent      from each other (they can each be manipulated by separate actors). This is      the default behaviour for all maps. 2) `atomic`: the list is treated as a single entity, like a scalar.      Atomic maps will be entirely replaced when updated.
  @JsonKey(
    
    name: r'x-kubernetes-map-type',
    required: false,
    includeIfNull: false
  )


  final String? xKubernetesMapType;



      /// x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.
  @JsonKey(
    
    name: r'x-kubernetes-preserve-unknown-fields',
    required: false,
    includeIfNull: false
  )


  final bool? xKubernetesPreserveUnknownFields;



      /// x-kubernetes-validations describes a list of validation rules written in the CEL expression language. This field is an alpha-level. Using this field requires the feature gate `CustomResourceValidationExpressions` to be enabled.
  @JsonKey(
    
    name: r'x-kubernetes-validations',
    required: false,
    includeIfNull: false
  )


  final List<V1ValidationRule>? xKubernetesValidations;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1JSONSchemaProps &&
     other.dollarRef == dollarRef &&
     other.dollarSchema == dollarSchema &&
     other.additionalItems == additionalItems &&
     other.additionalProperties == additionalProperties &&
     other.allOf == allOf &&
     other.anyOf == anyOf &&
     other.default_ == default_ &&
     other.definitions == definitions &&
     other.dependencies == dependencies &&
     other.description == description &&
     other.enum_ == enum_ &&
     other.example == example &&
     other.exclusiveMaximum == exclusiveMaximum &&
     other.exclusiveMinimum == exclusiveMinimum &&
     other.externalDocs == externalDocs &&
     other.format == format &&
     other.id == id &&
     other.items == items &&
     other.maxItems == maxItems &&
     other.maxLength == maxLength &&
     other.maxProperties == maxProperties &&
     other.maximum == maximum &&
     other.minItems == minItems &&
     other.minLength == minLength &&
     other.minProperties == minProperties &&
     other.minimum == minimum &&
     other.multipleOf == multipleOf &&
     other.not == not &&
     other.nullable == nullable &&
     other.oneOf == oneOf &&
     other.pattern == pattern &&
     other.patternProperties == patternProperties &&
     other.properties == properties &&
     other.required_ == required_ &&
     other.title == title &&
     other.type == type &&
     other.uniqueItems == uniqueItems &&
     other.xKubernetesEmbeddedResource == xKubernetesEmbeddedResource &&
     other.xKubernetesIntOrString == xKubernetesIntOrString &&
     other.xKubernetesListMapKeys == xKubernetesListMapKeys &&
     other.xKubernetesListType == xKubernetesListType &&
     other.xKubernetesMapType == xKubernetesMapType &&
     other.xKubernetesPreserveUnknownFields == xKubernetesPreserveUnknownFields &&
     other.xKubernetesValidations == xKubernetesValidations;

  @override
  int get hashCode =>
    dollarRef.hashCode +
    dollarSchema.hashCode +
    additionalItems.hashCode +
    additionalProperties.hashCode +
    allOf.hashCode +
    anyOf.hashCode +
    default_.hashCode +
    definitions.hashCode +
    dependencies.hashCode +
    description.hashCode +
    enum_.hashCode +
    example.hashCode +
    exclusiveMaximum.hashCode +
    exclusiveMinimum.hashCode +
    externalDocs.hashCode +
    format.hashCode +
    id.hashCode +
    items.hashCode +
    maxItems.hashCode +
    maxLength.hashCode +
    maxProperties.hashCode +
    maximum.hashCode +
    minItems.hashCode +
    minLength.hashCode +
    minProperties.hashCode +
    minimum.hashCode +
    multipleOf.hashCode +
    not.hashCode +
    nullable.hashCode +
    oneOf.hashCode +
    pattern.hashCode +
    patternProperties.hashCode +
    properties.hashCode +
    required_.hashCode +
    title.hashCode +
    type.hashCode +
    uniqueItems.hashCode +
    xKubernetesEmbeddedResource.hashCode +
    xKubernetesIntOrString.hashCode +
    xKubernetesListMapKeys.hashCode +
    xKubernetesListType.hashCode +
    xKubernetesMapType.hashCode +
    xKubernetesPreserveUnknownFields.hashCode +
    xKubernetesValidations.hashCode;

  factory V1JSONSchemaProps.fromJson(Map<String, dynamic> json) => _$V1JSONSchemaPropsFromJson(json);

  Map<String, dynamic> toJson() => _$V1JSONSchemaPropsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

