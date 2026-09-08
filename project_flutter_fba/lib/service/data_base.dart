import 'package:project_flutter_fba/modles/riyadh_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class Database {
  final supabase = Supabase.instance.client;

      Future<List <RiyadhModel>> getAllRiyadh()async{
            final data =await supabase.from("tourist_places").select();

            List<RiyadhModel> allRiyadh =[];

            for (var element in data) {
              RiyadhModel model =RiyadhModel.fromJson(element);
              allRiyadh.add(model);

              
            }
            return allRiyadh;
      }





}