import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class NetworkMonitor extends ChangeNotifier {
  late ConnectivityResult _connectivityResult = ConnectivityResult.none;
  NetworkMonitor() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      _connectivityResult = result;
      notifyListeners();
    });
  }

  bool get isConnected => _connectivityResult != ConnectivityResult.none;

  String get connectionStatus {
    switch (_connectivityResult) {
      case ConnectivityResult.wifi:
        return 'WiFi Connected';
      case ConnectivityResult.mobile:
        return 'Mobile Data Connected';
      case ConnectivityResult.none:
        return 'No Internet Connection';
      default:
        return 'Connection Status Unknown';
    }
  }
}
