part of 'controller.dart';

class DashboardDeliveryView extends StatelessView<DashboardDeliveryScreen,
    DashboardDeliveryController> {
  const DashboardDeliveryView(DashboardDeliveryController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 79.h,
          width: 375.w,
          color: const Color(0xffF2F2F2),
          padding: REdgeInsets.symmetric(horizontal: 17.r, vertical: 10.r),
          child: MaterialButton(
            onPressed: () {},
            color: const Color(0xffE1261C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.r),
            ),
            minWidth: 341.w,
            height: 56.h,
            child: CustomText(
              text: 'Submit',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: const Color(0xfff2f2f2),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 43.h,
            child: Container(
              width: 375.w,
              height: 101.h,
              color: const Color(0xff47494E),
              child: SvgPicture.asset(
                'assets/illustrations/container_bg.svg',
                fit: BoxFit.cover,
                width: 375.w,
                height: 118.h,
              ),
            ),
          ),
          Positioned(
            top: 72.h,
            left: 15.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => controller.returnToPreviousScreen(),
                  child: Container(
                    width: 48.w,
                    height: 48.w,
                    padding: REdgeInsets.all(13.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.25.r),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/arrow_right.svg',
                      width: 21.w,
                      height: 21.w,
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                CustomText(
                  text: 'Delivery History',
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Positioned(
            top: 277.h,
            left: 24.w,
            right: 24.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: '* ',
                      color: Colors.red,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    CustomText(
                      text: 'Take log of the inventory received',
                      color: const Color(0xff54565B),
                      fontSize: 14.sp,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                TextFormField(
                  cursorColor: const Color(0xff7C827D),
                  decoration: InputDecoration(
                    label: const CustomText(text: 'Volume (MT)'),
                    labelStyle: GoogleFonts.mulish(
                      textStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff7C827D),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: Color(0xff7C827D),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: Color(0xff7C827D),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32.h),
                TextFormField(
                  cursorColor: const Color(0xff7C827D),
                  decoration: InputDecoration(
                    label: const CustomText(text: 'Bags'),
                    labelStyle: GoogleFonts.mulish(
                      textStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff7C827D),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: Color(0xff7C827D),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: Color(0xff7C827D),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32.h),
              ],
            ),
          ),
          Positioned(
            top: 144.h,
            child: Container(
              padding: REdgeInsets.fromLTRB(4.r, 24.r, 26.r, 0),

              //  duration: const Duration(seconds: 1),
              height: controller.sizeAnimation.value,
              width: 375.w,
              color: const Color(0xffEBEBEB),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Logistic Company:',
                        color: const Color(0xff47494E),
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                      CustomText(
                        text: 'ABC Transport Limited',
                        color: const Color(0xff47494E),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                  SizedBox(height: 14.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Driver\'s Name:',
                        color: const Color(0xff47494E),
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                      CustomText(
                        text: 'Aminu Musa',
                        color: const Color(0xff47494E),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                  if (!controller.controller.isAnimating &&
                      controller.controller.value != 0.0)
                    SizedBox(height: 14.h),
                  if (!controller.controller.isAnimating &&
                      controller.controller.value != 0.0)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Weighted Volume\\Bag:',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                        CustomText(
                          text: '33 MT/Bag',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ],
                    ),
                  if (!controller.controller.isAnimating &&
                      controller.controller.value != 0.0)
                    SizedBox(height: 14.h),
                  if (!controller.controller.isAnimating &&
                      controller.controller.value != 0.0)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Driver\'s No:',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                        CustomText(
                          text: '07012345678',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ],
                    ),
                  if (!controller.controller.isAnimating &&
                      controller.controller.value != 0.0)
                    SizedBox(height: 14.h),
                  if (!controller.controller.isAnimating &&
                      controller.controller.value != 0.0)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Truck\'s No:',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                        CustomText(
                          text: 'CGE - 123XYZ',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ],
                    ),
                  if (!controller.controller.isAnimating &&
                      controller.controller.value != 0.0)
                    SizedBox(height: 14.h),
                  if (!controller.controller.isAnimating &&
                      controller.controller.value != 0.0)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Container\'s No:',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                        CustomText(
                          text: '12300344',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ],
                    ),
                  SizedBox(height: 18.h),
                  GestureDetector(
                    onTap: () => controller.playContainerAnimation(),
                    child: Container(
                      height: 20.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffE1261C),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Center(
                        child: CustomText(
                          text: controller.controller.value == 0
                              ? 'View more'
                              : 'View less',
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
