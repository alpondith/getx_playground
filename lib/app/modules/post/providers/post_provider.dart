import 'package:get/get.dart';

class PostProvider extends GetConnect {
  
  Future<dynamic> getPost() async{
    final response = await get('https://jsonplaceholder.typicode.com/posts/4');
    if(response.status.hasError){
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }

}
