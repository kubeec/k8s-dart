//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_webhook_conversion.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_custom_resource_conversion.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CustomResourceConversion {
  /// Returns a new [V1CustomResourceConversion] instance.
  V1CustomResourceConversion({

    required  this.strategy,

     this.webhook,
  });

      /// strategy specifies how custom resources are converted between versions. Allowed values are: - `\"None\"`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `\"Webhook\"`: API Server will call to an external webhook to do the conversion. Additional information   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
  @JsonKey(
    
    name: r'strategy',
    required: true,
    includeIfNull: false
  )


  final String strategy;



  @JsonKey(
    
    name: r'webhook',
    required: false,
    includeIfNull: false
  )


  final V1WebhookConversion? webhook;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CustomResourceConversion &&
     other.strategy == strategy &&
     other.webhook == webhook;

  @override
  int get hashCode =>
    strategy.hashCode +
    webhook.hashCode;

  factory V1CustomResourceConversion.fromJson(Map<String, dynamic> json) => _$V1CustomResourceConversionFromJson(json);

  Map<String, dynamic> toJson() => _$V1CustomResourceConversionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

