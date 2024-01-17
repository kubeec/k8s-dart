//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_overhead.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Overhead {
  /// Returns a new [V1Overhead] instance.
  V1Overhead({

     this.podFixed,
  });

      /// podFixed represents the fixed resource overhead associated with running a pod.
  @JsonKey(
    
    name: r'podFixed',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? podFixed;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Overhead &&
     other.podFixed == podFixed;

  @override
  int get hashCode =>
    podFixed.hashCode;

  factory V1Overhead.fromJson(Map<String, dynamic> json) => _$V1OverheadFromJson(json);

  Map<String, dynamic> toJson() => _$V1OverheadToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

