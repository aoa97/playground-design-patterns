import 'notification_service.dart';

class MessengerNotificationService implements INotificationService {
  @override
  void sendNotification(String message) => print('Pushing Messenger Notification: $message');
}
