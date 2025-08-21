import 'notification_service.dart';

class EmailNotificationService implements INotificationService {
  @override
  void sendNotification(String message) => print('Pushing Email Notification: $message');
}
