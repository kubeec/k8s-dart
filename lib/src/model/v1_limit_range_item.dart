//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_limit_range_item.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1LimitRangeItem {
  /// Returns a new [V1LimitRangeItem] instance.
  V1LimitRangeItem({

     this.default_,

     this.defaultRequest,

     this.max,

     this.maxLimitRequestRatio,

     this.min,

    required  this.type,
  });

      /// Default resource requirement limit value by resource name if resource limit is omitted.
  @JsonKey(
    
    name: r'default',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? default_;



      /// DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
  @JsonKey(
    
    name: r'defaultRequest',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? defaultRequest;



      /// Max usage constraints on this kind by resource name.
  @JsonKey(
    
    name: r'max',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? max;



      /// MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
  @JsonKey(
    
    name: r'maxLimitRequestRatio',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? maxLimitRequestRatio;



      /// Min usage constraints on this kind by resource name.
  @JsonKey(
    
    name: r'min',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? min;



      /// Type of resource that this limit applies to.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LimitRangeItem &&
     other.default_ == default_ &&
     other.defaultRequest == defaultRequest &&
     other.max == max &&
     other.maxLimitRequestRatio == maxLimitRequestRatio &&
     other.min == min &&
     other.type == type;

  @override
  int get hashCode =>
    default_.hashCode +
    defaultRequest.hashCode +
    max.hashCode +
    maxLimitRequestRatio.hashCode +
    min.hashCode +
    type.hashCode;

  factory V1LimitRangeItem.fromJson(Map<String, dynamic> json) => _$V1LimitRangeItemFromJson(json);

  Map<String, dynamic> toJson() => _$V1LimitRangeItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

