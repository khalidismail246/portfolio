import 'package:url_launcher/url_launcher.dart';

abstract class UrlLauncherServices {
  static Future<void> openUrl({required String url}) async {
    final uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}
