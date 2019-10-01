class ListBeanEntity {
	List<ListBeanData> data;
	bool success;

	ListBeanEntity({this.data, this.success});

	ListBeanEntity.fromJson(Map<String, dynamic> json) {
		if (json['data'] != null) {
			data = new List<ListBeanData>();(json['data'] as List).forEach((v) { data.add(new ListBeanData.fromJson(v)); });
		}
		success = json['success'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] =  this.data.map((v) => v.toJson()).toList();
    }
		data['success'] = this.success;
		return data;
	}
}

class ListBeanData {
	String lastReplyAt;
	int visitCount;
	String tab;
	bool top;
	ListBeanDataAuthor author;
	String id;
	String authorId;
	String title;
	int replyCount;
	String createAt;
	bool good;
	String content;

	ListBeanData({this.lastReplyAt, this.visitCount, this.tab, this.top, this.author, this.id, this.authorId, this.title, this.replyCount, this.createAt, this.good, this.content});

	ListBeanData.fromJson(Map<String, dynamic> json) {
		lastReplyAt = json['last_reply_at'];
		visitCount = json['visit_count'];
		tab = json['tab'];
		top = json['top'];
		author = json['author'] != null ? new ListBeanDataAuthor.fromJson(json['author']) : null;
		id = json['id'];
		authorId = json['author_id'];
		title = json['title'];
		replyCount = json['reply_count'];
		createAt = json['create_at'];
		good = json['good'];
		content = json['content'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['last_reply_at'] = this.lastReplyAt;
		data['visit_count'] = this.visitCount;
		data['tab'] = this.tab;
		data['top'] = this.top;
		if (this.author != null) {
      data['author'] = this.author.toJson();
    }
		data['id'] = this.id;
		data['author_id'] = this.authorId;
		data['title'] = this.title;
		data['reply_count'] = this.replyCount;
		data['create_at'] = this.createAt;
		data['good'] = this.good;
		data['content'] = this.content;
		return data;
	}
}

class ListBeanDataAuthor {
	String avatarUrl;
	String loginname;

	ListBeanDataAuthor({this.avatarUrl, this.loginname});

	ListBeanDataAuthor.fromJson(Map<String, dynamic> json) {
		avatarUrl = json['avatar_url'];
		loginname = json['loginname'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['avatar_url'] = this.avatarUrl;
		data['loginname'] = this.loginname;
		return data;
	}
}
