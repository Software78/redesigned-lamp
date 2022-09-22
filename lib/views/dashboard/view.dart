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
          openRatio: 0.5813,
          openScale: 0.8,
          controller: controller.advancedDrawerController,
          animationCurve: Curves.easeInOut,
          backdropColor: Color(0xff47494E),
          animationDuration: const Duration(milliseconds: 300),
          animateChildDecoration: true,
          rtlOpening: false,
          disabledGestures: true,
          drawer: Container(
            color: Color(0xff47494E),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Colors.white,
            ),
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16.r),
              child: Column(
                children: [
                  SizedBox(height: 17.h),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => controller.openDrawer(),
                        child: Stack(
                          children: [
                            Container(
                              width: 343.w,
                              height: 89.h,
                              decoration: BoxDecoration(
                                color: Color(0xff54565B),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16.r),
                                  topLeft: Radius.circular(16.r),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  'assets/illustrations/container_bg.svg',
                                  fit: BoxFit.fill,
                                  height: 89.h,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 342.w,
                        height: 29.h,
                        decoration: BoxDecoration(
                          color: Color(0xffE1261C),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.r),
                            bottomRight: Radius.circular(16.r),
                          ),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      SearchFormField(
                        label: 'Search truck number, commodity...',
                        suffixIcon: Container(
                          padding: REdgeInsets.all(10.r),
                          child: SvgPicture.asset(
                            'assets/icons/search.svg',
                          ),
                        ),
                      ),
                      SizedBox(height: 24.h),
                    ],
                  ),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 24.h),
                      itemBuilder: (context, index) => TransactionItem(
                          transaction: controller.transaction[index]),
                      itemCount: controller.transaction.length,
                    ),
                  ),
                ],
              ),
            ),
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
