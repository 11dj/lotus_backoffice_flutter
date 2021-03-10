import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import './core/models/all.dart';
import 'locator_setup.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';

List<SingleChildWidget> providers = [...providerModels];

List<SingleChildWidget> providerModels = [
  ChangeNotifierProvider<User>(create: (context) => locator<User>()),
  // ChangeNotifierProvider<Temp>(create: (context) => locator<Temp>()),
  // StreamProvider<RemoteMessage>.value(stream: FirebaseMessaging.onMessage)
  // StreamProvider(create: (_) => Noti().fcmController.stream)
];
