//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_scale_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ScaleStatus {
  /// Returns a new [V1ScaleStatus] instance.
  V1ScaleStatus({

    required  this.replicas,

     this.selector,
  });

      /// replicas is the actual number of observed instances of the scaled object.
  @JsonKey(
    
    name: r'replicas',
    required: true,
    includeIfNull: false
  )


  final int replicas;



      /// selector is the label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  @JsonKey(
    
    name: r'selector',
    required: false,
    includeIfNull: false
  )


  final String? selector;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ScaleStatus &&
     other.replicas == replicas &&
     other.selector == selector;

  @override
  int get hashCode =>
    replicas.hashCode +
    selector.hashCode;

  factory V1ScaleStatus.fromJson(Map<String, dynamic> json) => _$V1ScaleStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1ScaleStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

