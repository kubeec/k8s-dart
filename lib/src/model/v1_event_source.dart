//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_event_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EventSource {
  /// Returns a new [V1EventSource] instance.
  V1EventSource({

     this.component,

     this.host,
  });

      /// Component from which the event is generated.
  @JsonKey(
    
    name: r'component',
    required: false,
    includeIfNull: false
  )


  final String? component;



      /// Node name on which the event is generated.
  @JsonKey(
    
    name: r'host',
    required: false,
    includeIfNull: false
  )


  final String? host;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EventSource &&
     other.component == component &&
     other.host == host;

  @override
  int get hashCode =>
    component.hashCode +
    host.hashCode;

  factory V1EventSource.fromJson(Map<String, dynamic> json) => _$V1EventSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1EventSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

