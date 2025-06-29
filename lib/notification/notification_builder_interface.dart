import 'notification_interface.dart';

abstract class INotificationBuilder {
  INotificationBuilder setContent(String content);
  INotificationBuilder setSender(String sender);
  INotificationBuilder setTimestamp(String timestamp);
  INotification build();
}
