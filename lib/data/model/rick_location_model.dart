class RickLocationModel {
  final List<LocationDataList>? locationData;

  RickLocationModel({
    this.locationData,
  });
  
      
  
  factory RickLocationModel.from(Map<String,dynamic>json){
    return RickLocationModel(
      locationData: List<LocationDataList>.from(json["locationData"].map((value)=>LocationDataList.from(value)))
    );
  }
}

class LocationDataList {
  final int? id;
  final String? name;
  final String? type;
  final String? dimension;
  final List<String>? residents;
  final String? url;
  final String? created;

  LocationDataList({
    this.id,
    this.name,
    this.type,
    this.dimension,
    this.residents,
    this.url,
    this.created,
  });
  factory LocationDataList.from(Map<String,dynamic> json) {
    return LocationDataList(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      dimension: json['dimension'],
      residents: json['residents'],
      url: json['url'],
      created: json['created'],
    );
  }
}
