import 'package:playground_design_patterns/notification/messenger_notification.dart';

import 'messenger_notification_builder.dart';

class NotificationDirector {
  MessengerNotification buildMessengerNotification(MessengerNotificationBuilder _builder) {
    return _builder
        .setContent("Hello from Messenger!")
        .setSender("John Doe")
        .setTimestamp("2023-10-01 12:00:00")
        .setAttachments(["image1.png", "image2.png"]).build();
  }
}
