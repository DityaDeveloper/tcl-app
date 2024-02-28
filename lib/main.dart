import 'package:catcher/catcher.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'app/utilities/catcher_setup.dart';

void runApps() async {
  
  //await FlutterDownloader.initialize(debug: true, ignoreSsl: true);
  await GetStorage.init();
  Catcher(
    rootWidget: const App(),
    debugConfig: CatcherSetup.debug(),
    releaseConfig: CatcherSetup.release(),
    profileConfig: CatcherSetup.debug(),
  );
}
