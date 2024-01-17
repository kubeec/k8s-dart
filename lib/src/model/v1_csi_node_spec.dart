//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_csi_node_driver.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_csi_node_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CSINodeSpec {
  /// Returns a new [V1CSINodeSpec] instance.
  V1CSINodeSpec({

    required  this.drivers,
  });

      /// drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  @JsonKey(
    
    name: r'drivers',
    required: true,
    includeIfNull: false
  )


  final List<V1CSINodeDriver> drivers;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CSINodeSpec &&
     other.drivers == drivers;

  @override
  int get hashCode =>
    drivers.hashCode;

  factory V1CSINodeSpec.fromJson(Map<String, dynamic> json) => _$V1CSINodeSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1CSINodeSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

