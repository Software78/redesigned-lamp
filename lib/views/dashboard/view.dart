// ignore_for_file: constant_identifier_names, prefer_const_constructors

part of 'controller.dart';

class DashboardView
    extends StatelessView<DashboardScreen, DashboardController> {
  const DashboardView(DashboardController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AdvancedDrawer(
          controller: controller.advancedDrawerController,
          backdropColor: Colors.blueGrey,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          animateChildDecoration: true,
          rtlOpening: false,
          disabledGestures: false,
          drawer: Container(
            color: Colors.red,
          ),
          child: Container(
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => CommodityCodes(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r),
              topLeft: Radius.circular(20.r),
            ),
          ),
        ),
        backgroundColor: Color(0xffE1261C),
        child: SvgPicture.asset('assets/icons/info-circle.svg'),
      ),
    );
  }
}
