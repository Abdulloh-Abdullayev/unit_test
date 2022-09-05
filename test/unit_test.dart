import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/models/counter.dart';
import 'package:unit_test/models/post_model.dart';
import 'package:unit_test/service/post_service.dart';


void main(){

  /// Example Test

  test("Example testimiz", (){
    final counter = Counter(0);
    counter.increase();
    expect(counter.counter, 1);
  });

  /// Post API test

  test("Posts API chek", ()async{
    List<PostModel> posts = await PostServic.getPosts();
    expect(posts.runtimeType, List<PostModel>);
  });
}