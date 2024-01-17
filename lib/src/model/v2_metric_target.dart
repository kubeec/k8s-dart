//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v2_metric_target.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2MetricTarget {
  /// Returns a new [V2MetricTarget] instance.
  V2MetricTarget({

     this.averageUtilization,

     this.averageValue,

    required  this.type,

     this.value,
  });

      /// averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
  @JsonKey(
    
    name: r'averageUtilization',
    required: false,
    includeIfNull: false
  )


  final int? averageUtilization;



      /// averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  @JsonKey(
    
    name: r'averageValue',
    required: false,
    includeIfNull: false
  )


  final String? averageValue;



      /// type represents whether the metric type is Utilization, Value, or AverageValue
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



      /// value is the target value of the metric (as a quantity).
  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false
  )


  final String? value;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2MetricTarget &&
     other.averageUtilization == averageUtilization &&
     other.averageValue == averageValue &&
     other.type == type &&
     other.value == value;

  @override
  int get hashCode =>
    averageUtilization.hashCode +
    averageValue.hashCode +
    type.hashCode +
    value.hashCode;

  factory V2MetricTarget.fromJson(Map<String, dynamic> json) => _$V2MetricTargetFromJson(json);

  Map<String, dynamic> toJson() => _$V2MetricTargetToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

