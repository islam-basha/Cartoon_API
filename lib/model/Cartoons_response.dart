class CartoonsResponse {
  // CartoonsResponse({
  //     required this.title,
  //     required this.year,
  //     required this.creator,
  //     required this.rating,
  //     required this.genre,
  //     required this.runtimeInMinutes,
  //     required this.episodes,
  //     required this.image,
  //     required this.id,});

  CartoonsResponse({
    this.title,
    this.year,
    this.creator,
    this.rating,
    this.genre,
    this.runtimeInMinutes,
    this.episodes,
    this.image,
    this.id,});

  CartoonsResponse.fromJson(dynamic json) {
    title = json['title'];
    year = json['year'];
    creator = json['creator'] != null ? json['creator'].cast<String>() : [];
    rating = json['rating'];
    genre = json['genre'] != null ? json['genre'].cast<String>() : [];
    runtimeInMinutes = json['runtime_in_minutes'];
    episodes = json['episodes'];
    image = json['image'];
    id = json['id'];
  }
  String? title;
  int? year;
  List<String>? creator;
  String? rating;
  List<String>? genre;
  int? runtimeInMinutes;
  int? episodes;
  String? image;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['year'] = year;
    map['creator'] = creator;
    map['rating'] = rating;
    map['genre'] = genre;
    map['runtime_in_minutes'] = runtimeInMinutes;
    map['episodes'] = episodes;
    map['image'] = image;
    map['id'] = id;
    return map;
  }

}