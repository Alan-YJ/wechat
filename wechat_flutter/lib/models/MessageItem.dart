class MessageItem {
  late String avatarSrc;
  late String? unReadCount;
  late String nikeName;
  late String? lastMsg;
  late DateTime lastMsgAt;

  MessageItem(this.avatarSrc, this.nikeName, this.lastMsgAt,
      {this.unReadCount, this.lastMsg});
}
