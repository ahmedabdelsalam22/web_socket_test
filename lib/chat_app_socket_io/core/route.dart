import '../screen/chat_screen.dart';
import '../screen/chat_users_screen.dart';
import '../screen/login_screen.dart';

class Routes {
  static routes() {
    return {
      LoginScreen.ROUTE_ID: (context) => const LoginScreen(),
      ChatUsersScreen.ROUTE_ID: (context) => const ChatUsersScreen(),
      ChatScreen.ROUTE_ID: (context) => const ChatScreen(),
    };
  }

  static initScreen() {
    return LoginScreen.ROUTE_ID;
  }
}
