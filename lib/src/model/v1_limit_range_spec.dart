//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_limit_range_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_limit_range_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1LimitRangeSpec {
  /// Returns a new [V1LimitRangeSpec] instance.
  V1LimitRangeSpec({

    required  this.limits,
  });

      /// Limits is the list of LimitRangeItem objects that are enforced.
  @JsonKey(
    
    name: r'limits',
    required: true,
    includeIfNull: false
  )


  final List<V1LimitRangeItem> limits;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LimitRangeSpec &&
     other.limits == limits;

  @override
  int get hashCode =>
    limits.hashCode;

  factory V1LimitRangeSpec.fromJson(Map<String, dynamic> json) => _$V1LimitRangeSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1LimitRangeSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

