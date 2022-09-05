import 'package:dio/dio.dart';
import 'package:unit_test/models/post_model.dart';

class PostServic{
  static Future<List<PostModel>> getPosts()async{
    Response res = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    return (res.data as List).map((e) => PostModel.fromJson(e)).toList();
  }
}