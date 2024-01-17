//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/apiextensions_v1_webhook_client_config.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_webhook_conversion.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1WebhookConversion {
  /// Returns a new [V1WebhookConversion] instance.
  V1WebhookConversion({

     this.clientConfig,

    required  this.conversionReviewVersions,
  });

  @JsonKey(
    
    name: r'clientConfig',
    required: false,
    includeIfNull: false
  )


  final ApiextensionsV1WebhookClientConfig? clientConfig;



      /// conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
  @JsonKey(
    
    name: r'conversionReviewVersions',
    required: true,
    includeIfNull: false
  )


  final List<String> conversionReviewVersions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1WebhookConversion &&
     other.clientConfig == clientConfig &&
     other.conversionReviewVersions == conversionReviewVersions;

  @override
  int get hashCode =>
    clientConfig.hashCode +
    conversionReviewVersions.hashCode;

  factory V1WebhookConversion.fromJson(Map<String, dynamic> json) => _$V1WebhookConversionFromJson(json);

  Map<String, dynamic> toJson() => _$V1WebhookConversionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

