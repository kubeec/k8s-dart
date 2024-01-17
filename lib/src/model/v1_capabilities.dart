//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_capabilities.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Capabilities {
  /// Returns a new [V1Capabilities] instance.
  V1Capabilities({

     this.add,

     this.drop,
  });

      /// Added capabilities
  @JsonKey(
    
    name: r'add',
    required: false,
    includeIfNull: false
  )


  final List<String>? add;



      /// Removed capabilities
  @JsonKey(
    
    name: r'drop',
    required: false,
    includeIfNull: false
  )


  final List<String>? drop;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Capabilities &&
     other.add == add &&
     other.drop == drop;

  @override
  int get hashCode =>
    add.hashCode +
    drop.hashCode;

  factory V1Capabilities.fromJson(Map<String, dynamic> json) => _$V1CapabilitiesFromJson(json);

  Map<String, dynamic> toJson() => _$V1CapabilitiesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

