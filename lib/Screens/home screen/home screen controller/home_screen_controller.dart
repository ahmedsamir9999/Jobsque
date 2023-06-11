import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:jobsque/helper/sharedprefeances.dart';
import 'package:jobsque/model/FavoriteJobModel.dart';
import 'package:jobsque/model/JobsModule.dart';

import '../../saved screen/saved controller/saved_controller.dart';

class HomeScreenController extends GetxController {
  FavoriteJobModel? jobFav;
  JobsModule? jobs;

  List<bool> likes = [
    false,
    false,
  ];

  likeFun(index) async {
    if (likes[index] == false) {
      await postFav(index);
      likes[index] = !likes[index];
    }
    // else {
    //   await deleteJob(index);
    //   likes[index] = !likes[index];
    // }

    update();
  }

  Future<JobsModule?> showJob() async {
    final response = await http.get(
      Uri.parse('http://167.71.79.133/api/jobs'),
      headers: {'Authorization': MyCache.GetString(key: MyChachKey.token)},
    );
    jobs = JobsModule.fromJson(jsonDecode(response.body));

    final response1 = await http.get(
      Uri.parse(
          'http://167.71.79.133/api/favorites/${MyCache.GetString(key: MyChachKey.userId)}'),
      headers: {'Authorization': MyCache.GetString(key: MyChachKey.token)},
    );
    jobFav = FavoriteJobModel.fromJson(jsonDecode(response1.body));

    return jobs;
  }

  postFav(index) async {
    await http.post(
      Uri.parse(
          'http://167.71.79.133/api/favorites?user_id=${MyCache.GetString(key: MyChachKey.userId)}&job_id=${jobs?.data?[index].id}'),
      headers: {
        'Authorization': MyCache.GetString(
          key: MyChachKey.token,
        ),
      },
    );
  }

  deleteJob(index) async {
    await http.delete(
      Uri.parse(
          'http://167.71.79.133/api/favorites/${jobFav?.data?[0].id}'),
      headers: {'Authorization': MyCache.GetString(key: MyChachKey.token)},
    );
    print('.......${jobFav?.data?[0].id.toString()}');
  }

  @override
  void onInit() async{
    // TODO: implement onReady
    await showJob();
    if(jobFav!.data!.isEmpty)
    {
      likes=[false,false];
    }else
    {
      for(int i = 0;i<jobs!.data!.length;i++)
      {
        for(int j=0;j<jobFav!.data!.length;j++){
          if(jobs?.data![i].id.toString() == jobFav!.data![j].jobId.toString()){
            print("jobs id is ...........${jobs?.data![i].id.toString()}");
            print("favourite id is ...........${jobFav!.data![j].jobId.toString()}");
            likes[i]=true;
            break;
          }
          likes[i]=false;
        }
      }
    }
    super.onInit();
  }

}
