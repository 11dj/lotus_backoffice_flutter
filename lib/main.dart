import 'package:flutter/material.dart' hide Router;
import './packages.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import './styles/all.dart';
import './router.dart';
// import './ui/views/all.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setupLocator();
  runApp(EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('th', 'TH')],
      path: 'assets/lang',
      fallbackLocale: Locale('en', 'US'),
      child: MyApp()));
  // runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MainView();
  }
}

class MainView extends StatelessWidget {
  final CustomStyles customStyles = CustomStyles();
  @override
  Widget build(BuildContext context) {
    // print('initiate Language : ${context.locale}');
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: customStyles.customThemeData()
        ..textTheme.apply(fontFamily: GoogleFonts.openSans().fontFamily
            // fontFamily: context.locale == Locale('en', 'US')
            //     ? GoogleFonts.openSans().fontFamily
            //     : GoogleFonts.prompt().fontFamily,
            ),
      initialRoute: Router.initial(),
      onGenerateRoute: Router.generateRoute,
      // routes: {
      //   '/': (context) => LoginView(),
      //   // '/overview': (context) => OverviewPage(),
      // },
      // builder: EasyLoading.init(),
    );
    // return MultiProvider(
    //     providers: providers,
    //     child: MaterialApp(
    //       localizationsDelegates: context.localizationDelegates,
    //       supportedLocales: context.supportedLocales,
    //       locale: context.locale,
    //       theme: customStyles.customThemeData()
    //         ..textTheme.apply(
    //           // fontFamily: GoogleFonts.openSans().fontFamily
    //             fontFamily: context.locale == Locale('en', 'US')
    //                 ? GoogleFonts.openSans().fontFamily
    //                 : GoogleFonts.prompt().fontFamily,
    //             ),
    //       initialRoute: Router.initial(),
    //       onGenerateRoute: Router.generateRoute,
    //       builder: EasyLoading.init(),
    //     ));
  }
}
