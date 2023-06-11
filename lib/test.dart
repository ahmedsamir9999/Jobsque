import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'helper/sharedprefeances.dart';
import 'model/FavoriteJobModel.dart';
import 'model/JobsModule.dart';
import 'package:http/http.dart' as http;

class Test
{
  Future<JobsModule> showJob() async
  {

    final response = await http.get(
      Uri.parse(
          'http://167.71.79.133/api/jobs'),
      headers: {'Authorization': MyCache.GetString(key: MyChachKey.token)},
    );

    print(response.body);

    JobsModule jobAll = JobsModule.fromJson(jsonDecode(response.body));

    final response1 = await http.get(
      Uri.parse(
          'http://167.71.79.133/api/favorites/${MyCache.GetString(key: MyChachKey.userId)}'),
      headers: {'Authorization': MyCache.GetString(key: MyChachKey.token)},
    );

    FavoriteJobModel jobFav = FavoriteJobModel.fromJson(jsonDecode(response1.body));

    bool done = false ;
    List likes=[];

    for(int i = 0;i<jobAll.data!.length;i++)
    {
      for(int j=0;j<jobFav.data!.length;j++){
        if(jobAll.data![i].id == jobFav.data![j].jobId){
          //{1,2,3,....}
          //1=1
          done = true ;
          likes[i]=done;

          break ;
        }likes[i]=false;
      }

    }



    return jobAll ;
  }



}
