class InitParamsGoogle {
  final String apiKey;
  final String? androidPackageName;
  final String? androidCertFingerprint;

  InitParamsGoogle({
    required this.apiKey,
    this.androidPackageName,
    this.androidCertFingerprint,
  });
}
