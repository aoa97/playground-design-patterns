import 'messenger_notification_builder.dart';
import 'notification_interface.dart';

class MessengerNotification implements INotification {
  @override
  final String? content;

  @override
  final String? sender;

  @override
  final String? timestamp;

  final List<String>? attachments;

  MessengerNotification(MessengerNotificationBuilder builder)
      : this.content = builder.content,
        this.sender = builder.sender,
        this.timestamp = builder.timestamp,
        this.attachments = builder.attachments;

  @override
  String toString() {
    return 'MessengerNotification(content: $content, sender: $sender, timestamp: $timestamp, attachments: $attachments)';
  }
}
