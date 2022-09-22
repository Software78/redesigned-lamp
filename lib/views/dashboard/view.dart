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
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 17.h,
                    left: 16.w,
                    right: 16.w,
                    child: Container(
                      width: 342.w,
                      height: 118.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: const Color(0xff54565B),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 17.h,
                    left: 16.w,
                    right: 16.w,
                    child: SvgPicture.asset(
                      'assets/illustrations/container_bg.svg',
                      width: 342.w,
                      height: 118.h,
                    ),
                  ),
                  Positioned(
                    top: 114.h,
                    right: 16.w,
                    left: 16.w,
                    child: Container(
                      width: 342.w,
                      height: 29.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffE1261C),
                        border: Border.all(color: Colors.white, width: 2.w),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(20.r),
                        ),
                      ),
                      child: Center(
                        child: CustomText(
                          text: 'You have 6 open deliveries',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 33.h,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: "Welcome Back!",
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: 2.h),
                            const CustomText(
                              text: "Adamu Adamu 👋🏼",
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 28.h,
                    right: 28.w,
                    child: SvgPicture.asset('assets/icons/notification.svg'),
                  ),
                  Positioned(
                    top: 165.h,
                    left: 19.w,
                    right: 19.w,
                    child: Container(
                      height: 56.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: const Color(0xffDEDDDC),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 186.h,
                    left: 31.w,
                    right: 49.w,
                    child: TextField(
                      cursorColor: const Color(0xff8B908B),
                      decoration: InputDecoration.collapsed(
                        hintStyle: GoogleFonts.mulish(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff8B908B),
                        ),
                        hintText: 'Search truck number, commodity...',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 186.h,
                    right: 29.w,
                    child: SvgPicture.asset(
                      'assets/icons/search.svg',
                    ),
                  ),
                  Positioned(
                    top: 246.h,
                    right: 17.w,
                    left: 17.w,
                    bottom: 0.h,
                    child: SizedBox(
                      width: 341.w,
                      child: ListView.separated(
                        physics: const ClampingScrollPhysics(),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 24.h),
                        itemBuilder: (context, index) => TransactionItem(
                          transaction: controller.transaction[index],
                        ),
                        itemCount: controller.transaction.length,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
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
