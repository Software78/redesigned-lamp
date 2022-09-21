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
              width: 342.w,
              height: 118.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Color(0xff54565B),
              ),
            ),
          ),
          Positioned(
            top: 61.h,
            left: 16.w,
            right: 16.w,
            child: SvgPicture.asset(
              'assets/illustrations/container_bg.svg',
              width: 342.w,
              height: 118.h,
            ),
          ),
          Positioned(
            top: 158.h,
            right: 16.w,
            left: 16.w,
            child: Container(
              width: 342.w,
              height: 29.h,
              decoration: BoxDecoration(
                color: Color(0xffE1261C),
                border: Border.all(color: Colors.white, width: 2.w),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
