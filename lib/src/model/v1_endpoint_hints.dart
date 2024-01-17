//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_for_zone.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_endpoint_hints.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EndpointHints {
  /// Returns a new [V1EndpointHints] instance.
  V1EndpointHints({

     this.forZones,
  });

      /// forZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing.
  @JsonKey(
    
    name: r'forZones',
    required: false,
    includeIfNull: false
  )


  final List<V1ForZone>? forZones;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EndpointHints &&
     other.forZones == forZones;

  @override
  int get hashCode =>
    forZones.hashCode;

  factory V1EndpointHints.fromJson(Map<String, dynamic> json) => _$V1EndpointHintsFromJson(json);

  Map<String, dynamic> toJson() => _$V1EndpointHintsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

