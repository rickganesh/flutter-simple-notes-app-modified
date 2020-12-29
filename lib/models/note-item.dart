import 'package:flutter_app/utils/string-utils.dart';

class NoteItem {
  int id;
  String title;
  String content;
  int deleted;
  int modifiedDate;

  NoteItem({this.id, this.title, this.content, this.deleted, this.modifiedDate});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'deleted': deleted,
      'modifiedDate': modifiedDate
    };
  }

  factory NoteItem.fromMap(Map<String, dynamic> data) => new NoteItem(
    id: data['id'],
    title: data['title'],
    content: data['content'],
    deleted: data['deleted'],
    modifiedDate: data['modifiedDate'],
  );

  factory NoteItem.fromMapTruncatedContent(Map<String, dynamic> data) => new NoteItem(
    id: data['id'],
    title: data['title'],
    content: StringUtils.truncateWithEllipsis(data['content']),
    deleted: data['deleted'],
    modifiedDate: data['modifiedDate'],
  );

  @override
  String toString() {
    // TODO: implement toString
    return 'Note($id, $title, $deleted, $modifiedDate)';
  }
}