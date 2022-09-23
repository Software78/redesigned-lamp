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
                    Stack(
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
                      ],
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
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => controller.navigateToDelivery(),
                      child: TransactionItem(
                          transaction: controller.transaction[index]),
                    ),
                    itemCount: controller.transaction.length,
                  ),
                ),
              ],
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
