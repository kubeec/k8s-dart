//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_queuing_configuration.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2QueuingConfiguration {
  /// Returns a new [V1beta2QueuingConfiguration] instance.
  V1beta2QueuingConfiguration({

     this.handSize,

     this.queueLengthLimit,

     this.queues,
  });

      /// `handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.
  @JsonKey(
    
    name: r'handSize',
    required: false,
    includeIfNull: false
  )


  final int? handSize;



      /// `queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.
  @JsonKey(
    
    name: r'queueLengthLimit',
    required: false,
    includeIfNull: false
  )


  final int? queueLengthLimit;



      /// `queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.
  @JsonKey(
    
    name: r'queues',
    required: false,
    includeIfNull: false
  )


  final int? queues;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2QueuingConfiguration &&
     other.handSize == handSize &&
     other.queueLengthLimit == queueLengthLimit &&
     other.queues == queues;

  @override
  int get hashCode =>
    handSize.hashCode +
    queueLengthLimit.hashCode +
    queues.hashCode;

  factory V1beta2QueuingConfiguration.fromJson(Map<String, dynamic> json) => _$V1beta2QueuingConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2QueuingConfigurationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

