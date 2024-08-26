import 'package:url_launcher/url_launcher.dart';

Future<void> openNewWindow(String url) async {
  if (await canLaunch(url)) {
    await launchUrl(
      Uri.parse(url),
      webOnlyWindowName: '_blank', // This opens the URL in a new window or tab _blank
    );
  } else {
    throw 'Could not launch $url';
  }
}
