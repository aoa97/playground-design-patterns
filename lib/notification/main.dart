import 'messenger_notification.dart';
import 'messenger_notification_builder.dart';
import 'slack_notification.dart';
import 'slack_notification_builder.dart';

main() {
  final SlackNotification notification = SlackNotificationBuilder()
      .setContent("A new message in Slack!")
      .setSender("Alice")
      .setTimestamp("2023-10-01 12:00:00")
      .setChannel("#general")
      .build();

  final MessengerNotification messengerNotification = MessengerNotificationBuilder()
      .setContent("A new message in Messenger!")
      .setSender("Alice")
      .setAttachments(["image1.png", "image2.png"])
      .setTimestamp("2023-10-01 12:00:00")
      .build();

  print(notification.toString());
  print(messengerNotification.toString());
}
