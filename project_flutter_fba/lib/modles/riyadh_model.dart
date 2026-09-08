class RiyadhModel {
String ? catagory;
String ? name;
String? image;
String ?imageDet;
String?description;
String?nameSec;
String?imageSec;

RiyadhModel({this.catagory,this.name,this.image,this.imageDet,this.description,
this.nameSec,this.imageSec});



factory RiyadhModel.fromJson(Map<String,dynamic> json){
  return RiyadhModel(
    catagory: json["category"] ?? "Unknown"

    ,name: json["name"] ?? "Unknown"
    ,image: json["image"] ?? "Unknown"
    ,imageDet: json["image_det"] ?? "Unknown"
    ,description: json["description"] ?? "Unknown"
    ,nameSec: json["name_sec"] ?? "Unknown"
    ,imageSec: json["image_sec"] ?? "Unknown"



  );
}




}