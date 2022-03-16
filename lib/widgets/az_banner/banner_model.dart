List<BannerModel> getBannerModelList(List<dynamic> list){
	List<BannerModel> result = [];
	list.forEach((item){
		result.add(BannerModel.fromJson(item));
	});
	return result;
}

class BannerModel {
	String url;
	String title;
	String link;

	BannerModel({this.url, this.title, this.link});

	BannerModel.fromJson(Map<String, dynamic> json) {
		url = json['url'];
		title = json['title'];
		link = json['link'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = Map<String, dynamic>();
		data['url'] = this.url;
		data['title'] = this.title;
		data['link'] = this.link;
		return data;
	}
}
