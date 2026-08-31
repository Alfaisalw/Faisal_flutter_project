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
    catagory: json["catagory"]//1
    ,name: json["name"]//2
    ,image: json["image"]//3
    ,imageDet: json["imageDet"]//4 
    ,description: json["description"]///5
    ,nameSec: json["nameSec"]//6
    ,imageSec: json["imageSec"]//7



  );
}




}