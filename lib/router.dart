
// ignore: import_of_legacy_library_into_null_safe
import 'package:fluro/fluro.dart';
import 'package:cms_client/config/router_handler.dart'; 


class Routes {

  // 定义路由名称
  static String home = '/';
  static String login = '/login';
  static String roomDetail = '/room/:roomId';
  static String cart = '/cart';
  // 达人
  static String powerAttorney = '/pages/home/tab_daren/power_attorney';
  static String applicationSubmit = '/pages/home/tab_daren/application_submit';
  static String applicationSubmitSuccess = '/pages/home/tab_daren/application_submit_success';
  static String taskList = '/task_list';

  // 编写函数 configureRoutes 关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: homeHandler);
    router.define(login, handler: loginHandler);
    router.define(roomDetail, handler: RoomDetailHandler);
    router.define(cart, handler: CartHandler);
    router.define(powerAttorney, handler: PowerAttorneyHandler);
    router.define(applicationSubmit, handler: ApplicationSubmitHandler);
    router.define(applicationSubmitSuccess, handler: ApplicationSubmitSuccessHandler);
    router.define(taskList, handler: TaskListHandler);
    router.notFoundHandler = NotFoundHandler;
  }
}
