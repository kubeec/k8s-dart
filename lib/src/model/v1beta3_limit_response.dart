//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1beta3_queuing_configuration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta3_limit_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta3LimitResponse {
  /// Returns a new [V1beta3LimitResponse] instance.
  V1beta3LimitResponse({

     this.queuing,

    required  this.type,
  });

  @JsonKey(
    
    name: r'queuing',
    required: false,
    includeIfNull: false
  )


  final V1beta3QueuingConfiguration? queuing;



      /// `type` is \"Queue\" or \"Reject\". \"Queue\" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. \"Reject\" means that requests that can not be executed upon arrival are rejected. Required.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta3LimitResponse &&
     other.queuing == queuing &&
     other.type == type;

  @override
  int get hashCode =>
    queuing.hashCode +
    type.hashCode;

  factory V1beta3LimitResponse.fromJson(Map<String, dynamic> json) => _$V1beta3LimitResponseFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta3LimitResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

