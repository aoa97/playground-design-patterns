import 'email_notification_service.dart';
import 'messenger_notification_service.dart';
import 'slack_notification_service.dart';

void main() {
  final n1 = SlackNotificationService();
  n1.sendNotification('Hello World!');

  final n2 = EmailNotificationService();
  n2.sendNotification('Hello World!');

  final n3 = MessengerNotificationService();
  n3.sendNotification('Hello World!');
}
