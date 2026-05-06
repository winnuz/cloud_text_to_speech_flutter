import 'package:cloud_text_to_speech/src/common/http/base_client.dart';
import 'package:cloud_text_to_speech/src/google/auth/authentication_types.dart';
import 'package:cloud_text_to_speech/src/google/common/config.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

class VoicesClientGoogle extends BaseClient {
  VoicesClientGoogle(
      {required http.Client client, required AuthenticationHeaderGoogle header})
      : super(client: RetryClient(client), header: header);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers[header!.type] = header!.headerValue;

    final packageName = ConfigGoogle.androidPackageName;
    final certFingerprint = ConfigGoogle.androidCertFingerprint;
    if (packageName != null && packageName.isNotEmpty) {
      request.headers['X-Android-Package'] = packageName;
    }
    if (certFingerprint != null && certFingerprint.isNotEmpty) {
      request.headers['X-Android-Cert'] = certFingerprint;
    }

    return client.send(request);
  }
}
