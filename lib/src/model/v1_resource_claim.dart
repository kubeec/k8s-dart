//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_resource_claim.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ResourceClaim {
  /// Returns a new [V1ResourceClaim] instance.
  V1ResourceClaim({

    required  this.name,
  });

      /// Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ResourceClaim &&
     other.name == name;

  @override
  int get hashCode =>
    name.hashCode;

  factory V1ResourceClaim.fromJson(Map<String, dynamic> json) => _$V1ResourceClaimFromJson(json);

  Map<String, dynamic> toJson() => _$V1ResourceClaimToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

