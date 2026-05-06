class InitParamsGoogle {
  final String apiKey;
  final String? androidPackageName;
  final String? androidCertFingerprint;
  final String? iosBundleIdentifier;

  InitParamsGoogle({
    required this.apiKey,
    this.androidPackageName,
    this.androidCertFingerprint,
    this.iosBundleIdentifier,
  });
}
