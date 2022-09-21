part of 'controller.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  const HomeView(HomeController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 61.h,
            left: 16.w,
            right: 16.w,
            child: Container(
              width: double.infinity,
              height: 118.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Color(0xff54565B),
              ),
            ),
          ),
          Positioned(child: )
        ],
      ),
    );
  }
}
