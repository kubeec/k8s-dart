//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_scale_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ScaleSpec {
  /// Returns a new [V1ScaleSpec] instance.
  V1ScaleSpec({

     this.replicas,
  });

      /// replicas is the desired number of instances for the scaled object.
  @JsonKey(
    
    name: r'replicas',
    required: false,
    includeIfNull: false
  )


  final int? replicas;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ScaleSpec &&
     other.replicas == replicas;

  @override
  int get hashCode =>
    replicas.hashCode;

  factory V1ScaleSpec.fromJson(Map<String, dynamic> json) => _$V1ScaleSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1ScaleSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

