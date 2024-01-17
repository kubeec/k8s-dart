//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_external_documentation.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ExternalDocumentation {
  /// Returns a new [V1ExternalDocumentation] instance.
  V1ExternalDocumentation({

     this.description,

     this.url,
  });

  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false
  )


  final String? description;



  @JsonKey(
    
    name: r'url',
    required: false,
    includeIfNull: false
  )


  final String? url;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ExternalDocumentation &&
     other.description == description &&
     other.url == url;

  @override
  int get hashCode =>
    description.hashCode +
    url.hashCode;

  factory V1ExternalDocumentation.fromJson(Map<String, dynamic> json) => _$V1ExternalDocumentationFromJson(json);

  Map<String, dynamic> toJson() => _$V1ExternalDocumentationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

