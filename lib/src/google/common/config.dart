///Holds all configurations
class ConfigGoogle {
  static late final String _apiKey;
  static late final String? _projectId;
  static String? _androidPackageName;
  static String? _androidCertFingerprint;
  static String? _iosBundleIdentifier;

  ConfigGoogle._();

  static void init({
    required String apiKey,
    String? projectId,
    String? androidPackageName,
    String? androidCertFingerprint,
    String? iosBundleIdentifier,
  }) {
    _apiKey = apiKey;
    _projectId = projectId;
    _androidPackageName = androidPackageName;
    _androidCertFingerprint = androidCertFingerprint;
    _iosBundleIdentifier = iosBundleIdentifier;
  }

  static String get apiKey {
    if (ConfigGoogle._apiKey.isEmpty) {
      throw Exception("Google API Key is not initialized");
    }
    return ConfigGoogle._apiKey;
  }

  static String? get projectId {
    return ConfigGoogle._projectId;
  }

  static String? get androidPackageName => _androidPackageName;

  static String? get androidCertFingerprint => _androidCertFingerprint;

  static String? get iosBundleIdentifier => _iosBundleIdentifier;
}
