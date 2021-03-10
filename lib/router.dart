import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import './ui/views/all.dart';
import './ui/views/login_view.dart';
import './ui/views/no_found_view.dart';

class Router {
  static initial() => 'login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute(
            maintainState: false, builder: (_) => LoginView());
      // case 'home':
      //   return MaterialPageRoute(builder: (_) => BranchListView());
      // case 'detail':
      //   return MaterialPageRoute(builder: (_) => BranchDetailScreen());
      // case 'camera':
      //   return MaterialPageRoute(builder: (_) => CameraView());
      // case 'qr':
      //   return MaterialPageRoute(builder: (_) => QRScreen());
      // case 'meter':
      //   return MaterialPageRoute(builder: (_) => MeterDetailScreen());
      // case 'verify-detect-meter':
      //   return MaterialPageRoute(builder: (_) => VerifyMeterScreen());
      default:
        return MaterialPageRoute(
            maintainState: false, builder: (_) => NotFoundView());
    }
  }
}
