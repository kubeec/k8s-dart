//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1beta2_queuing_configuration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_limit_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2LimitResponse {
  /// Returns a new [V1beta2LimitResponse] instance.
  V1beta2LimitResponse({

     this.queuing,

    required  this.type,
  });

  @JsonKey(
    
    name: r'queuing',
    required: false,
    includeIfNull: false
  )


  final V1beta2QueuingConfiguration? queuing;



      /// `type` is \"Queue\" or \"Reject\". \"Queue\" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. \"Reject\" means that requests that can not be executed upon arrival are rejected. Required.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2LimitResponse &&
     other.queuing == queuing &&
     other.type == type;

  @override
  int get hashCode =>
    queuing.hashCode +
    type.hashCode;

  factory V1beta2LimitResponse.fromJson(Map<String, dynamic> json) => _$V1beta2LimitResponseFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2LimitResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

