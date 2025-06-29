import 'notification_interface.dart';
import 'slack_notification_builder.dart';

class SlackNotification implements INotification {
  @override
  final String? content;
  @override
  final String? sender;
  @override
  final String? timestamp;

  final String? channel;

  SlackNotification(SlackNotificationBuilder builder)
      : this.content = builder.content,
        this.sender = builder.sender,
        this.timestamp = builder.timestamp,
        this.channel = builder.channel;

  @override
  String toString() {
    return 'SlackNotification(content: $content, sender: $sender, timestamp: $timestamp, channel: $channel)';
  }
}
