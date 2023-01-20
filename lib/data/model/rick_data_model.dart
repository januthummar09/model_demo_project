class RickDataModel {
  final Information? info;
  final List<ResultList>? results;

  RickDataModel({
    this.info,
    this.results,
  });
  factory RickDataModel.from(Map<String, dynamic> json) {
    return RickDataModel(
      info: Information.from(json['info']),
      results: List<ResultList>.from(json['results'].map((value)=>ResultList.from(value)))
    );
  }
}

class Information {
  final int? count;
  final int? pages;
  final String? next;
  final String? prev;

  Information({
    this.count,
    this.pages,
    this.next,
    this.prev,
  });
  factory Information.from(Map<String, dynamic> json) {
    return Information(
      count: json['count'],
      pages: json['pages'],
      next: json['next'],
      prev: json['prev'],
    );
  }
}

class ResultList {
  final String? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final OriginAndLocation? origin;
  final OriginAndLocation? location;
  final String? image;
  final List<String>? episode;
  final String? url;
  final String? created;

  ResultList({
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
  factory ResultList.from(Map<String,dynamic>json){
    return ResultList(
      id: json['id'].toString(),
      name: json['name'],
      status: json['status'],
      species: json['species'],
      type: json['type'],
      gender: json['gender'],
      image: json['image'],
      url: json['url'],
      created: json['created'],
      origin: OriginAndLocation.from(json['origin']),
      location:OriginAndLocation.from(json['location']) ,
      episode: json['episode'],
    );
  }
}

class OriginAndLocation {
  final String? name;
  final String? url;

  OriginAndLocation({
    this.name,
    this.url,
  });
  factory OriginAndLocation.from(Map<String,dynamic>json){
    return OriginAndLocation(
      name: json['name'],
      url: json['url'],
    );
  }
}
