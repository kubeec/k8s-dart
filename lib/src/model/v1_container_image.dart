//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_container_image.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ContainerImage {
  /// Returns a new [V1ContainerImage] instance.
  V1ContainerImage({

     this.names,

     this.sizeBytes,
  });

      /// Names by which this image is known. e.g. [\"kubernetes.example/hyperkube:v1.0.7\", \"cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7\"]
  @JsonKey(
    
    name: r'names',
    required: false,
    includeIfNull: false
  )


  final List<String>? names;



      /// The size of the image in bytes.
  @JsonKey(
    
    name: r'sizeBytes',
    required: false,
    includeIfNull: false
  )


  final int? sizeBytes;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ContainerImage &&
     other.names == names &&
     other.sizeBytes == sizeBytes;

  @override
  int get hashCode =>
    names.hashCode +
    sizeBytes.hashCode;

  factory V1ContainerImage.fromJson(Map<String, dynamic> json) => _$V1ContainerImageFromJson(json);

  Map<String, dynamic> toJson() => _$V1ContainerImageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

