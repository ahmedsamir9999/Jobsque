import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:jobsque/helper/sharedprefeances.dart';
import 'package:jobsque/model/JobsModule.dart';

import '../../home screen/home screen controller/home_screen_controller.dart';



class SavedController extends GetxController {
  JobsModule? jobs;


  final control = Get.put(HomeScreenController());


  Future<JobsModule> getSavedJob() async {
    final response = await http.get(
      Uri.parse(
          'http://167.71.79.133/api/favorites/${MyCache.GetString(key: MyChachKey.userId)}'),
      headers: {'Authorization': MyCache.GetString(key: MyChachKey.token)},
    );

    JobsModule job = JobsModule.fromJson(jsonDecode(response.body));
    update();

    return job;
  }


  @override
  void onInit() async{
    // TODO: implement onReady
    await getSavedJob();
    jobs = await getSavedJob();
    super.onInit();

  }

  deleteJob(index)async
  {
    await http.delete(
      Uri.parse(
          'http://167.71.79.133/api/favorites/${jobs?.data?[index].id.toString()}'),
      headers: {'Authorization': MyCache.GetString(key: MyChachKey.token)},
    );
    control.onInit();
    control.update();
    onInit();
  }

}
