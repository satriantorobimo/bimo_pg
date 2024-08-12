import 'package:flutter/material.dart';
import 'package:flutter_application_1/comp/color_comp.dart';
import 'package:flutter_application_1/comp/fab_bottom_app_bar_comp.dart';
import 'package:flutter_application_1/feature/aktifitas/aktifitas_screen.dart';
import 'package:flutter_application_1/feature/home/home_screen.dart';
import 'package:flutter_application_1/feature/izin/izin_screen.dart';
import 'package:flutter_application_1/feature/laporan/laporan_screen.dart';
import 'package:flutter_application_1/feature/tab/tab_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  Widget _getPage(int index) {
    if (index == 0) {
      return const HomeScreen();
    }
    if (index == 1) {
      return const AktifitasScreen();
    }
    if (index == 2) {
      return const IzinScreen();
    }
    if (index == 3) {
      return const LaporanScreen();
    }

    return const HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    var bottomBarProvider = Provider.of<TabProvider>(context);
    return Scaffold(
      body: _getPage(bottomBarProvider.page),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'Absensi',
        backgroundColor: Colors.white,
        color: Colors.black,
        selectedColor: primaryColor,
        onTabSelected: (index) {
          bottomBarProvider.setPage(index);
          bottomBarProvider.setTab(0);
        },
        items: [
          FABBottomAppBarComp(iconData: 'assets/icons/home.svg', text: 'Home'),
          FABBottomAppBarComp(
              iconData: 'assets/icons/activity.svg', text: 'Aktivitas'),
          FABBottomAppBarComp(iconData: 'assets/icons/izin.svg', text: 'Izin'),
          FABBottomAppBarComp(
              iconData: 'assets/icons/laporan.svg', text: 'Laporan'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(
          context), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildFab(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, 'absen-route');
      },
      backgroundColor: primaryColor,
      elevation: 2.0,
      child: SvgPicture.asset(
        'assets/icons/absen.svg',
        color: Colors.white,
        height: 32,
        width: 32,
      ),
    );
  }
}
