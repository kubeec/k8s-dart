//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_metric_identifier.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2MetricIdentifier {
  /// Returns a new [V2MetricIdentifier] instance.
  V2MetricIdentifier({

    required  this.name,

     this.selector,
  });

      /// name is the name of the given metric
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'selector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? selector;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2MetricIdentifier &&
     other.name == name &&
     other.selector == selector;

  @override
  int get hashCode =>
    name.hashCode +
    selector.hashCode;

  factory V2MetricIdentifier.fromJson(Map<String, dynamic> json) => _$V2MetricIdentifierFromJson(json);

  Map<String, dynamic> toJson() => _$V2MetricIdentifierToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

