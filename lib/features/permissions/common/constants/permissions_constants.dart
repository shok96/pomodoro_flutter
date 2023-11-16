abstract class PermissionsConstants {
  const PermissionsConstants._();

  /// Если запрос на Permission вернул .denied быстрее, чем за это время,
  /// то можно смело предположить, что окно запроса юзер не увидел и лучше
  /// в следующий раз отправить его в настройки
  static const deniedCantAsk = Duration(milliseconds: 100);
}
