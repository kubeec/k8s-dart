//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_tcp_socket_action.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1TCPSocketAction {
  /// Returns a new [V1TCPSocketAction] instance.
  V1TCPSocketAction({

     this.host,

    required  this.port,
  });

      /// Optional: Host name to connect to, defaults to the pod IP.
  @JsonKey(
    
    name: r'host',
    required: false,
    includeIfNull: false
  )


  final String? host;



      /// Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  @JsonKey(
    
    name: r'port',
    required: true,
    includeIfNull: false
  )


  final Object port;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1TCPSocketAction &&
     other.host == host &&
     other.port == port;

  @override
  int get hashCode =>
    host.hashCode +
    port.hashCode;

  factory V1TCPSocketAction.fromJson(Map<String, dynamic> json) => _$V1TCPSocketActionFromJson(json);

  Map<String, dynamic> toJson() => _$V1TCPSocketActionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

