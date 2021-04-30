import 'package:animations/animations.dart';
import 'package:audio_service/audio_service.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lec_attendance_system/localdb/calendarcontroller.dart';
import 'package:lec_attendance_system/pages/drawerpage.dart';
import 'package:lec_attendance_system/pages/homepage.dart';
import 'package:lec_attendance_system/pages/miniplayer.dart';
import 'package:lec_attendance_system/pages/nowplaying.dart';
import 'package:lec_attendance_system/provider/radiostate.dart';
import 'package:lec_attendance_system/provider/themes.dart';
import 'package:lec_attendance_system/widgets/speeddial.dart';

import 'model/queuestate.dart';
import 'model/queuestream.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await GetStorage.init();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final theme = watch(themeState);
    return MaterialApp(
      theme: ThemeData(
        primaryColor: theme.primaryColors[theme.themeIndex],
        accentColor: theme.accentColors[theme.themeIndex],
        brightness: theme.darkMode?Brightness.dark:Brightness.light,
        textTheme: GoogleFonts.sourceSansProTextTheme().apply(bodyColor: theme.darkMode?Colors.white:Colors.black,displayColor:theme.darkMode?Colors.white:Colors.black ),
        primaryTextTheme: GoogleFonts.sourceSansProTextTheme().apply(bodyColor: Colors.white,displayColor:theme.darkMode?Colors.white:Colors.black ),
      ),
      home: AudioServiceWidget(child: HomePage()),
    );
  }
}

// class AuthWrapper extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, ScopedReader watch) {
//
//     return watch(authState).when(
//         data: (user)=> user == null ?LoginScreen() : HomePage(),
//         loading: ()=> Center(child:CircularProgressIndicator()),
//         error: (error, stack)=> LoginScreen(),
//     );
//   }
// }


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final theme = context.read(themeState);
    startService();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
            backgroundColor: isDark?Theme.of(context).primaryColor:Theme.of(context).accentColor,
            title: Text('Note Keeper',style: TextStyle(fontSize: 18),),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 9),
                child: IconButton(icon: Icon(isDark?FeatherIcons.sun:FeatherIcons.moon,size: 20), onPressed: (){
                  theme.changeDarkMode();
                }),
              ),
            ],
            elevation: 0),
      ),
      drawer: MainDrawer(),
      body:Home(),
      // body:PageTransitionSwitcher(
      //   duration: Duration(milliseconds: 300),
      //   transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
      //   return FadeThroughTransition(animation: primaryAnimation, secondaryAnimation: secondaryAnimation, child:  child);
      // },
      //   child: Home()),
      floatingActionButton: buildSpeedDial(context,context.read(calendarState).selectedDay??DateTime.now()),
      bottomNavigationBar: StreamBuilder<QueueState>(
        stream: queueStateStream,
        builder: (context, snapshot) {
          final queueState = snapshot.data;
          final queue = queueState?.queue ?? [];
          final mediaItem = queueState?.mediaItem;
          if(queue.isNotEmpty&&queue!=null)
            return OpenContainer(closedColor: Colors.transparent,openColor: Colors.transparent,
              openBuilder: (context, action) {
                return CurrentlyPlaying(title: mediaItem.title);
              },
              closedBuilder: (context, action) {
                return Card(margin: EdgeInsets.zero,elevation: 7,
                  child: InkWell(
                    splashFactory: InkRipple.splashFactory,
                    onTap: action,
                    child: MiniPlayer(queue: queue, mediaItem: mediaItem),
                  ),
                );
              },);
          else return SizedBox();
        },
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //
      //   onTap: (index){
      //     setState(()=>_currentPage = index);
      //   },
      //   currentIndex: _currentPage,
      //   unselectedItemColor: Colors.grey[500],
      //   selectedItemColor: Theme.of(context).primaryColor,
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(icon:Icon( FeatherIcons.home),label: "Home"),
      //     BottomNavigationBarItem(icon:Icon( FeatherIcons.grid),label: "Categories"),
      //     BottomNavigationBarItem(icon:Icon( FeatherIcons.grid),label: "Utilities"),
      //     BottomNavigationBarItem(icon:Icon( FeatherIcons.settings),label: "Settings"),
      //   ],),
    );
  }
}
