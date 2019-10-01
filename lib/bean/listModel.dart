class ListModel {
  bool success;
  List<Data> data;

  ListModel({this.success, this.data});

  ListModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String id;
  String authorId;
  String tab;
  String content;
  String title;
  String lastReplyAt;
  bool good;
  bool top;
  int replyCount;
  int visitCount;
  String createAt;
  Author author;

  Data(
      {this.id,
        this.authorId,
        this.tab,
        this.content,
        this.title,
        this.lastReplyAt,
        this.good,
        this.top,
        this.replyCount,
        this.visitCount,
        this.createAt,
        this.author});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    authorId = json['author_id'];
    tab = json['tab'];
    content = json['content'];
    title = json['title'];
    lastReplyAt = json['last_reply_at'];
    good = json['good'];
    top = json['top'];
    replyCount = json['reply_count'];
    visitCount = json['visit_count'];
    createAt = json['create_at'];
    author =
    json['author'] != null ? new Author.fromJson(json['author']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['author_id'] = this.authorId;
    data['tab'] = this.tab;
    data['content'] = this.content;
    data['title'] = this.title;
    data['last_reply_at'] = this.lastReplyAt;
    data['good'] = this.good;
    data['top'] = this.top;
    data['reply_count'] = this.replyCount;
    data['visit_count'] = this.visitCount;
    data['create_at'] = this.createAt;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    return data;
  }
}

class Author {
  String loginname;
  String avatarUrl;

  Author({this.loginname, this.avatarUrl});

  Author.fromJson(Map<String, dynamic> json) {
    loginname = json['loginname'];
    avatarUrl = json['avatar_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loginname'] = this.loginname;
    data['avatar_url'] = this.avatarUrl;
    return data;
  }
}