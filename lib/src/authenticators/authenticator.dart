/// Represents a plugin that can handle a specific type of authentication
/// information (e.g. 'gcp')
abstract class Authenticator {
  /// Returns the name of this authenticator, this should be the value that is
  /// also in a kubeconfig file.
  String getName();

  /// Get a token from this authenticator.
  ///
  /// [config] The configuration information for this authenticator.
  /// Returns the new token, null of no such token can be found/generated.
  String getToken(Map<String, String> config);

  /// Determines if this config is expired.
  bool isExpired(Map<String, String> config);

  /// Refreshes an expired token with a new fresh one.
  Map<String, String> refresh(Map<String, String> config);
}
