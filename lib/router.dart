import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/absensi/absensi_screen.dart';
import 'package:flutter_application_1/feature/absensi_detail/absensi_detail_screen.dart';
import 'package:flutter_application_1/feature/aktifitas_detail/aktifitas_detail_screen.dart';
import 'package:flutter_application_1/feature/izin_detail/izin_detail_screen.dart';
import 'package:flutter_application_1/feature/login/login_screen.dart';
import 'package:flutter_application_1/feature/tab/tab_screen.dart';
import 'package:flutter_application_1/feature/tambah_izin/tambah_izin_screen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login-route':
        return PageRouteBuilder<dynamic>(
            pageBuilder: (_, __, ___) => const LoginScreen(),
            settings: RouteSettings(name: settings.name),
            transitionsBuilder: (_, Animation<double> a, __, Widget c) =>
                FadeTransition(opacity: a, child: c));

      case 'tab-route':
        return PageRouteBuilder<dynamic>(
            pageBuilder: (_, __, ___) => const TabScreen(),
            settings: RouteSettings(name: settings.name),
            transitionsBuilder: (_, Animation<double> a, __, Widget c) =>
                FadeTransition(opacity: a, child: c));

      case 'absen-route':
        return PageRouteBuilder<dynamic>(
            pageBuilder: (_, __, ___) => const AbsesnsiScreen(),
            settings: RouteSettings(name: settings.name),
            transitionsBuilder: (_, Animation<double> a, __, Widget c) =>
                FadeTransition(opacity: a, child: c));

      case 'absen-detail-route':
        return PageRouteBuilder<dynamic>(
            pageBuilder: (_, __, ___) => const AbsesnsiDetailScreen(),
            settings: RouteSettings(name: settings.name),
            transitionsBuilder: (_, Animation<double> a, __, Widget c) =>
                FadeTransition(opacity: a, child: c));

      case 'tambah-izin-route':
        return PageRouteBuilder<dynamic>(
            pageBuilder: (_, __, ___) => const TambahIzinScreen(),
            settings: RouteSettings(name: settings.name),
            transitionsBuilder: (_, Animation<double> a, __, Widget c) =>
                FadeTransition(opacity: a, child: c));

      case 'izin-detail-route':
        return PageRouteBuilder<dynamic>(
            pageBuilder: (_, __, ___) => const IzinDetailScreen(),
            settings: RouteSettings(name: settings.name),
            transitionsBuilder: (_, Animation<double> a, __, Widget c) =>
                FadeTransition(opacity: a, child: c));

      case 'aktifitas-detail-route':
        return PageRouteBuilder<dynamic>(
            pageBuilder: (_, __, ___) => const AktifitasDetailScreen(),
            settings: RouteSettings(name: settings.name),
            transitionsBuilder: (_, Animation<double> a, __, Widget c) =>
                FadeTransition(opacity: a, child: c));

      default:
        return MaterialPageRoute<dynamic>(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
