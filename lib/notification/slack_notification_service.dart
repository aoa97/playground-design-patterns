import 'notification_service.dart';

class SlackNotificationService implements INotificationService {
  @override
  void sendNotification(String message) => print('Pushing Slack Notification: $message');
}
