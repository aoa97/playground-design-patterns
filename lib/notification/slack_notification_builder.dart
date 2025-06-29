import 'notification_builder_interface.dart';
import 'slack_notification.dart';

class SlackNotificationBuilder implements INotificationBuilder {
  String? _content;
  String? _sender;
  String? _timestamp;
  String? _channel;

  String? get content => _content;
  String? get sender => _sender;
  String? get timestamp => _timestamp;
  String? get channel => _channel;

  @override
  SlackNotificationBuilder setContent(String content) {
    this._content = content;
    return this;
  }

  @override
  SlackNotificationBuilder setSender(String sender) {
    this._sender = sender;
    return this;
  }

  @override
  SlackNotificationBuilder setTimestamp(String timestamp) {
    this._timestamp = timestamp;
    return this;
  }

  SlackNotificationBuilder setChannel(String channel) {
    this._channel = channel;
    return this;
  }

  @override
  SlackNotification build() {
    return SlackNotification(this);
  }
}
