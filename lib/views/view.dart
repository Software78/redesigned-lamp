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
                  bottomRight: Radius.circular(20.r),
                ),
              ),
            ),
          ),
          Positioned(
            top: 77.h,
            left: 32.w,
            child: Row(
              children: [
                Container(
                  width: 45.w,
                  height: 45.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color: Colors.white,
                      width: 2.w,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.r),
                    child: Image.asset('assets/images/adamu.jpeg'),
                  ),
                ),
                SizedBox(width: 8.w),
                Column(
                  children: [
                    CustomText(text: "Welcome Back!"),
                    SizedBox(height: 2.h),
                    CustomText(text: "Adamu Adamu"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
