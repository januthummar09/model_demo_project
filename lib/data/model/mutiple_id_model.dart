class MultipleDataModel {
  final List<Detail>? multipleList;

  MultipleDataModel({this.multipleList});
  factory MultipleDataModel.from(Map<String, dynamic> json) {
    return MultipleDataModel(
        multipleList: List<Detail>.from(
            json['multipleList'].map((value) => Detail.fromJson(value))));
  }
}

class Detail {
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final Origin? origin;
  final Origin? location;
  final String? image;
  final List<String>? episode;
  final String? url;
  final String? created;

  Detail({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });
  factory Detail.fromJson(Map<String, dynamic> json) {
    return Detail(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      type: json['type'],
      gender: json['gender'],
      origin: Origin.fromJson(json['origin']),
      location: Origin.fromJson(json['location']),
      image: json['image'],
      episode: json['episode'],
      url: json['url'],
      created: json['created'],
    );
  }
}

class Origin {
  final String? name;
  final String? url;

  Origin({this.name, this.url});
  factory Origin.fromJson(Map<String, dynamic> json) {
    return Origin(
      name: json['name'],
      url: json['url'],
    );
  }
}
