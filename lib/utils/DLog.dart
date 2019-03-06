
class DLog {
  static const String TAG = "SYJ_Flutter";
  static const bool DEBUG = true;

  static void d(String msg, {tag = TAG} ) {
    if(DEBUG) {
      print("$tag:$msg");
    }
  }

}