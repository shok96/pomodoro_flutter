import 'package:app_settings/app_settings.dart';

abstract class OpenSettings {
  const OpenSettings._();

  static void notificationsPermission() {
    AppSettings.openNotificationSettings();
  }
}
