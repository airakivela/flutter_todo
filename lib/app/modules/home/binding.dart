import 'package:get/get.dart';
import 'package:getx_to_do/app/data/providers/task/provider.dart';
import 'package:getx_to_do/app/data/services/storage/repository.dart';
import 'package:getx_to_do/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(taskProvider: TaskProvider()),
      ),
    );
  }
}
