import 'package:ondemand/get_config.dart' as _get_config;
import 'package:ondemand/login.dart' as _login;
import 'package:ondemand/ondemand.dart';

/// Initialized an [OnDemand] object
class Initialization {

  /// Logs in, gets the config and returns a new [OnDemand] object.
  static Future<OnDemand> create() async {
    var onDemand = OnDemand(siteNumber: SITE_NUMBER);

    var loggedIn = await onDemand.login(_login.Request());
    var accessToken = loggedIn.headers['access-token'];

    return onDemand
      ..baseHeaders = {
        'access-token': accessToken,
        'authorization': accessToken,
      }
      ..config = await onDemand.getConfig(_get_config.Request());
  }
}
