import 'messenger_notification.dart';
import 'notification_builder_interface.dart';

class MessengerNotificationBuilder implements INotificationBuilder {
  String? _content;
  String? _sender;
  String? _timestamp;
  List<String>? _attachments;

  String? get content => _content;
  String? get sender => _sender;
  String? get timestamp => _timestamp;
  List<String>? get attachments => _attachments;

  @override
  MessengerNotificationBuilder setContent(String content) {
    this._content = content;
    return this;
  }

  @override
  MessengerNotificationBuilder setSender(String sender) {
    this._sender = sender;
    return this;
  }

  @override
  MessengerNotificationBuilder setTimestamp(String timestamp) {
    this._timestamp = timestamp;
    return this;
  }

  MessengerNotificationBuilder setAttachments(List<String> attachments) {
    this._attachments = attachments;
    return this;
  }

  @override
  MessengerNotification build() {
    return MessengerNotification(this);
  }
}
