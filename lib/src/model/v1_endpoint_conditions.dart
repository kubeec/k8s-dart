//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_endpoint_conditions.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EndpointConditions {
  /// Returns a new [V1EndpointConditions] instance.
  V1EndpointConditions({

     this.ready,

     this.serving,

     this.terminating,
  });

      /// ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be \"true\" for terminating endpoints, except when the normal readiness behavior is being explicitly overridden, for example when the associated Service has set the publishNotReadyAddresses flag.
  @JsonKey(
    
    name: r'ready',
    required: false,
    includeIfNull: false
  )


  final bool? ready;



      /// serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition.
  @JsonKey(
    
    name: r'serving',
    required: false,
    includeIfNull: false
  )


  final bool? serving;



      /// terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating.
  @JsonKey(
    
    name: r'terminating',
    required: false,
    includeIfNull: false
  )


  final bool? terminating;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EndpointConditions &&
     other.ready == ready &&
     other.serving == serving &&
     other.terminating == terminating;

  @override
  int get hashCode =>
    ready.hashCode +
    serving.hashCode +
    terminating.hashCode;

  factory V1EndpointConditions.fromJson(Map<String, dynamic> json) => _$V1EndpointConditionsFromJson(json);

  Map<String, dynamic> toJson() => _$V1EndpointConditionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

