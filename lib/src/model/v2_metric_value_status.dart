//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v2_metric_value_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2MetricValueStatus {
  /// Returns a new [V2MetricValueStatus] instance.
  V2MetricValueStatus({

     this.averageUtilization,

     this.averageValue,

     this.value,
  });

      /// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  @JsonKey(
    
    name: r'averageUtilization',
    required: false,
    includeIfNull: false
  )


  final int? averageUtilization;



      /// averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  @JsonKey(
    
    name: r'averageValue',
    required: false,
    includeIfNull: false
  )


  final String? averageValue;



      /// value is the current value of the metric (as a quantity).
  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false
  )


  final String? value;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2MetricValueStatus &&
     other.averageUtilization == averageUtilization &&
     other.averageValue == averageValue &&
     other.value == value;

  @override
  int get hashCode =>
    averageUtilization.hashCode +
    averageValue.hashCode +
    value.hashCode;

  factory V2MetricValueStatus.fromJson(Map<String, dynamic> json) => _$V2MetricValueStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V2MetricValueStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

