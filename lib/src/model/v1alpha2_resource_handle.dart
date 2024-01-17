//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha2_resource_handle.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha2ResourceHandle {
  /// Returns a new [V1alpha2ResourceHandle] instance.
  V1alpha2ResourceHandle({

     this.data,

     this.driverName,
  });

      /// Data contains the opaque data associated with this ResourceHandle. It is set by the controller component of the resource driver whose name matches the DriverName set in the ResourceClaimStatus this ResourceHandle is embedded in. It is set at allocation time and is intended for processing by the kubelet plugin whose name matches the DriverName set in this ResourceHandle.  The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
  @JsonKey(
    
    name: r'data',
    required: false,
    includeIfNull: false
  )


  final String? data;



      /// DriverName specifies the name of the resource driver whose kubelet plugin should be invoked to process this ResourceHandle's data once it lands on a node. This may differ from the DriverName set in ResourceClaimStatus this ResourceHandle is embedded in.
  @JsonKey(
    
    name: r'driverName',
    required: false,
    includeIfNull: false
  )


  final String? driverName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha2ResourceHandle &&
     other.data == data &&
     other.driverName == driverName;

  @override
  int get hashCode =>
    data.hashCode +
    driverName.hashCode;

  factory V1alpha2ResourceHandle.fromJson(Map<String, dynamic> json) => _$V1alpha2ResourceHandleFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha2ResourceHandleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

