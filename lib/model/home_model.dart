import 'dart:convert';

class HomeModel {
  bool? success;
  Data? data;

  HomeModel({
    this.success,
    this.data,
  });

  factory HomeModel.fromRawJson(String str) => HomeModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
    success: json["success"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data?.toJson(),
  };
}

class Data {
  List<BannerModel>? banners;
  List<MenuModel>? menus;
  List<SectionTitle>? sectionTitles;
  Section? section1;
  Section2? section2;
  Section? section3;
  Section? section4;
  List<BannerModel>? section5;
  List<Category>? category;
  dynamic notifcationCount;

  Data({
    this.banners,
    this.menus,
    this.sectionTitles,
    this.section1,
    this.section2,
    this.section3,
    this.section4,
    this.section5,
    this.category,
    this.notifcationCount,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    banners: json["banners"] == null ? [] : List<BannerModel>.from(json["banners"]!.map((x) => BannerModel.fromJson(x))),
    menus: json["menus"] == null ? [] : List<MenuModel>.from(json["menus"]!.map((x) => MenuModel.fromJson(x))),
    sectionTitles: json["sectionTitles"] == null ? [] : List<SectionTitle>.from(json["sectionTitles"]!.map((x) => SectionTitle.fromJson(x))),
    section1: json["section1"] == null ? null : Section.fromJson(json["section1"]),
    section2: json["section2"] == null ? null : Section2.fromJson(json["section2"]),
    section3: json["section3"] == null ? null : Section.fromJson(json["section3"]),
    section4: json["section4"] == null ? null : Section.fromJson(json["section4"]),
    section5: json["section5"] == null ? [] : List<BannerModel>.from(json["section5"]!.map((x) => BannerModel.fromJson(x))),
    category: json["category"] == null ? [] : List<Category>.from(json["category"]!.map((x) => Category.fromJson(x))),
    notifcationCount: json["notifcationCount"],
  );

  Map<String, dynamic> toJson() => {
    "banners": banners == null ? [] : List<dynamic>.from(banners!.map((x) => x.toJson())),
    "menus": menus == null ? [] : List<dynamic>.from(menus!.map((x) => x.toJson())),
    "sectionTitles": sectionTitles == null ? [] : List<dynamic>.from(sectionTitles!.map((x) => x.toJson())),
    "section1": section1?.toJson(),
    "section2": section2?.toJson(),
    "section3": section3?.toJson(),
    "section4": section4?.toJson(),
    "section5": section5 == null ? [] : List<dynamic>.from(section5!.map((x) => x.toJson())),
    "category": category == null ? [] : List<dynamic>.from(category!.map((x) => x.toJson())),
    "notifcationCount": notifcationCount,
  };
}

class BannerModel {
  String? id;
  String? image;
  String? imageField;
  String? type;
  bool? isEnabled;
  String? startDate;
  String? startTime;
  String? endDate;
  String? endTime;
  Status? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? title;
  String? subTitle;
  String? description;
  String? page;
  String? name;
  String? link;

  BannerModel({
    this.id,
    this.image,
    this.imageField,
    this.type,
    this.isEnabled,
    this.startDate,
    this.startTime,
    this.endDate,
    this.endTime,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.title,
    this.subTitle,
    this.description,
    this.page,
    this.name,
    this.link,
  });

  factory BannerModel.fromRawJson(String str) => BannerModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
    id: json["_id"],
    image: json["image"],
    imageField: json["imageField"],
    type: json["type"],
    isEnabled: json["isEnabled"],
    startDate: json["startDate"],
    startTime: json["startTime"],
    endDate: json["endDate"],
    endTime: json["endTime"],
    status: statusValues.map[json["status"]]!,
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    title: json["title"],
    subTitle: json["subTitle"],
    description: json["description"],
    page: json["page"],
    name: json["name"],
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "image": image,
    "imageField": imageField,
    "type": type,
    "isEnabled": isEnabled,
    "startDate": startDate,
    "startTime": startTime,
    "endDate": endDate,
    "endTime": endTime,
    "status": statusValues.reverse[status],
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "title": title,
    "subTitle": subTitle,
    "description": description,
    "page": page,
    "name": name,
    "link": link,
  };
}

enum Status {
  ACTIVE
}

final statusValues = EnumValues({
  "active": Status.ACTIVE
});

class Category {
  String? id;
  String? name;
  String? industry;
  List<dynamic>? subCategories;
  bool? isEnabled;
  bool? isDisplayHome;
  Status? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? field;

  Category({
    this.id,
    this.name,
    this.industry,
    this.subCategories,
    this.isEnabled,
    this.isDisplayHome,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.field,
  });

  factory Category.fromRawJson(String str) => Category.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["_id"],
    name: json["name"],
    industry: json["industry"],
    subCategories: json["subCategories"] == null ? [] : List<dynamic>.from(json["subCategories"]!.map((x) => x)),
    isEnabled: json["isEnabled"],
    isDisplayHome: json["isDisplayHome"],
    status: statusValues.map[json["status"]]!,
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    field: json["field"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "industry": industry,
    "subCategories": subCategories == null ? [] : List<dynamic>.from(subCategories!.map((x) => x)),
    "isEnabled": isEnabled,
    "isDisplayHome": isDisplayHome,
    "status": statusValues.reverse[status],
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "field": field,
  };
}

class MenuModel {
  String? id;
  String? image;
  String? imageField;
  String? title;
  bool? isEnabled;
  Status? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  MenuModel({
    this.id,
    this.image,
    this.imageField,
    this.title,
    this.isEnabled,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory MenuModel.fromRawJson(String str) => MenuModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
    id: json["_id"],
    image: json["image"],
    imageField: json["imageField"],
    title: json["title"],
    isEnabled: json["isEnabled"],
    status: statusValues.map[json["status"]]!,
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "image": image,
    "imageField": imageField,
    "title": title,
    "isEnabled": isEnabled,
    "status": statusValues.reverse[status],
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class Section {
  String? title;
  List<BannerModel>? data;

  Section({
    this.title,
    this.data,
  });

  factory Section.fromRawJson(String str) => Section.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Section.fromJson(Map<String, dynamic> json) => Section(
    title: json["title"],
    data: json["data"] == null ? [] : List<BannerModel>.from(json["data"]!.map((x) => BannerModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Section2 {
  String? title;
  List<Datum>? data;

  Section2({
    this.title,
    this.data,
  });

  factory Section2.fromRawJson(String str) => Section2.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Section2.fromJson(Map<String, dynamic> json) => Section2(
    title: json["title"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  String? id;
  String? media;
  String? mediaField;
  String? name;
  String? mediaType;
  String? startDate;
  String? startTime;
  String? endDate;
  String? endTime;
  bool? isEnabled;
  Status? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Datum({
    this.id,
    this.media,
    this.mediaField,
    this.name,
    this.mediaType,
    this.startDate,
    this.startTime,
    this.endDate,
    this.endTime,
    this.isEnabled,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["_id"],
    media: json["media"],
    mediaField: json["mediaField"],
    name: json["name"],
    mediaType: json["media_type"],
    startDate: json["startDate"],
    startTime: json["startTime"],
    endDate: json["endDate"],
    endTime: json["endTime"],
    isEnabled: json["isEnabled"],
    status: statusValues.map[json["status"]]!,
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "media": media,
    "mediaField": mediaField,
    "name": name,
    "media_type": mediaType,
    "startDate": startDate,
    "startTime": startTime,
    "endDate": endDate,
    "endTime": endTime,
    "isEnabled": isEnabled,
    "status": statusValues.reverse[status],
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class SectionTitle {
  String? id;
  String? section1Name;
  String? section2Name;
  String? section3Name;
  String? section4Name;
  String? section5Name;
  int? v;

  SectionTitle({
    this.id,
    this.section1Name,
    this.section2Name,
    this.section3Name,
    this.section4Name,
    this.section5Name,
    this.v,
  });

  factory SectionTitle.fromRawJson(String str) => SectionTitle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SectionTitle.fromJson(Map<String, dynamic> json) => SectionTitle(
    id: json["_id"],
    section1Name: json["section1Name"],
    section2Name: json["section2Name"],
    section3Name: json["section3Name"],
    section4Name: json["section4Name"],
    section5Name: json["section5Name"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "section1Name": section1Name,
    "section2Name": section2Name,
    "section3Name": section3Name,
    "section4Name": section4Name,
    "section5Name": section5Name,
    "__v": v,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
