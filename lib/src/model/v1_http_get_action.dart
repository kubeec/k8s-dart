//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_http_header.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_http_get_action.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1HTTPGetAction {
  /// Returns a new [V1HTTPGetAction] instance.
  V1HTTPGetAction({

     this.host,

     this.httpHeaders,

     this.path,

    required  this.port,

     this.scheme,
  });

      /// Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead.
  @JsonKey(
    
    name: r'host',
    required: false,
    includeIfNull: false
  )


  final String? host;



      /// Custom headers to set in the request. HTTP allows repeated headers.
  @JsonKey(
    
    name: r'httpHeaders',
    required: false,
    includeIfNull: false
  )


  final List<V1HTTPHeader>? httpHeaders;



      /// Path to access on the HTTP server.
  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false
  )


  final String? path;



      /// Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  @JsonKey(
    
    name: r'port',
    required: true,
    includeIfNull: false
  )


  final Object port;



      /// Scheme to use for connecting to the host. Defaults to HTTP.
  @JsonKey(
    
    name: r'scheme',
    required: false,
    includeIfNull: false
  )


  final String? scheme;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1HTTPGetAction &&
     other.host == host &&
     other.httpHeaders == httpHeaders &&
     other.path == path &&
     other.port == port &&
     other.scheme == scheme;

  @override
  int get hashCode =>
    host.hashCode +
    httpHeaders.hashCode +
    path.hashCode +
    port.hashCode +
    scheme.hashCode;

  factory V1HTTPGetAction.fromJson(Map<String, dynamic> json) => _$V1HTTPGetActionFromJson(json);

  Map<String, dynamic> toJson() => _$V1HTTPGetActionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

