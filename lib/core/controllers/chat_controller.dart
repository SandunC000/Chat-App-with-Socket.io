import 'package:get/get.dart';

import '../../features/data/models/common/message.dart';

class ChatController extends GetxController {
  var chatMessage = <Message>[].obs;
  var connectedUser = 0.obs;
}
