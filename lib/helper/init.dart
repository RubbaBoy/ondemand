import 'package:ondemand/get_config.dart' as _get_config;
import 'package:ondemand/login.dart' as _login;
import 'package:ondemand/ondemand.dart';

/// Holds basic data used by all OnDemand apps.
class Initialization {

  final OnDemand onDemand;
  final _get_config.Response config;

  Initialization._(this.onDemand, this.config);

  /// Logs in, gets the config and returns an immutable [Initialization] object.
  static Future<Initialization> create() async {
    var onDemand = OnDemand(siteNumber: SITE_NUMBER);

    var loggedIn = await onDemand.login(_login.Request());
    var accessToken = loggedIn.headers['access-token'];
    onDemand.baseHeaders = {
      'access-token': accessToken,
      'authorization': accessToken,
    };

    var config = await onDemand.getConfig(_get_config.Request());

    return Initialization._(onDemand, config);
  }
}
