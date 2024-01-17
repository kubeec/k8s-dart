//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1beta3_flow_distinguisher_method.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta3FlowDistinguisherMethod {
  /// Returns a new [V1beta3FlowDistinguisherMethod] instance.
  V1beta3FlowDistinguisherMethod({

    required  this.type,
  });

      /// `type` is the type of flow distinguisher method The supported types are \"ByUser\" and \"ByNamespace\". Required.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta3FlowDistinguisherMethod &&
     other.type == type;

  @override
  int get hashCode =>
    type.hashCode;

  factory V1beta3FlowDistinguisherMethod.fromJson(Map<String, dynamic> json) => _$V1beta3FlowDistinguisherMethodFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta3FlowDistinguisherMethodToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

