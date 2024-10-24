import 'package:url_launcher/url_launcher.dart';

class AppUrl {
  static openWhatsApp(String phoneNumber) async {
    String whatsappUrl = "whatsapp://send?phone=$phoneNumber";
    launchUrl(Uri.parse(whatsappUrl));
  }

  static openCall(String phoneNumber) async {
    String callNumber = "tel://$phoneNumber";
    launchUrl(Uri.parse(callNumber));
  }

  static openLocation(String googleMapUrl) async {
    launchUrl(Uri.parse(googleMapUrl));
  }
}
