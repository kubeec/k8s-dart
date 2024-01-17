//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_service_backend_port.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ServiceBackendPort {
  /// Returns a new [V1ServiceBackendPort] instance.
  V1ServiceBackendPort({

     this.name,

     this.number,
  });

      /// name is the name of the port on the Service. This is a mutually exclusive setting with \"Number\".
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with \"Name\".
  @JsonKey(
    
    name: r'number',
    required: false,
    includeIfNull: false
  )


  final int? number;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ServiceBackendPort &&
     other.name == name &&
     other.number == number;

  @override
  int get hashCode =>
    name.hashCode +
    number.hashCode;

  factory V1ServiceBackendPort.fromJson(Map<String, dynamic> json) => _$V1ServiceBackendPortFromJson(json);

  Map<String, dynamic> toJson() => _$V1ServiceBackendPortToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

