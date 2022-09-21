// ignore_for_file: constant_identifier_names

part of 'controller.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  const HomeView(HomeController state, {Key? key}) : super(state, key: key);

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
                          transaction: transaction[index],
                        ),
                        itemCount: transaction.length,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transaction,
  });

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 107.h,
          width: 341.w,
          padding: REdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 10.h,
          ),
          decoration: BoxDecoration(
            color: const Color(0xfffcfcfc),
            border: Border.all(color: const Color(0xffe8e8e8)),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 21.h,
                    padding:
                        REdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: Color(0xfff2f2f2),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: CustomText(
                      text:
                          '${transaction.amount} MT of ${transaction.product.name}',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: transaction.isAfexDelivery
                          ? Color(0xffE1261C)
                          : Color(0xff0089C8),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  CustomText(
                    text: transaction.truckNumber,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff54565B),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/seller.svg'),
                      SizedBox(width: 4.w),
                      CustomText(
                        text: transaction.buyer,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C827D),
                      ),
                      SizedBox(width: 7.w),
                      SvgPicture.asset(
                        'assets/icons/arrow_forward.svg',
                        color: transaction.isAfexDelivery
                            ? Color(0xffE1261C)
                            : null,
                      ),
                      SizedBox(width: 7.w),
                      SvgPicture.asset('assets/icons/seller.svg'),
                      SizedBox(width: 7.w),
                      CustomText(
                        text: transaction.seller,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C827D),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 15.h,
          width: 341.w,
          padding: REdgeInsets.symmetric(horizontal: 15.r),
          decoration: BoxDecoration(
            color: const Color(0xffe8e8e8),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            ),
          ),
          child: Row(
            children: [
              CustomText(text: ''),
              Spacer(),
              CustomText(
                text: 'ID:',
                fontSize: 8.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff979797),
              ),
              CustomText(
                text: transaction.transactionId,
                color: Color(0xff47494E),
                fontSize: 8.sp,
                fontWeight: FontWeight.w600,
              )
            ],
          ),
        ),
      ],
    );
  }
}

enum Product { SSG, MAZ, COCOA, GOLD }

class Transaction {
  final Product product;
  final String truckNumber;
  final double amount;
  final String seller;
  final String buyer;
  final String transactionId;
  final DateTime dateTime;
  bool isAfexDelivery;

  Transaction({
    required this.product,
    required this.truckNumber,
    required this.amount,
    required this.buyer,
    required this.dateTime,
    this.isAfexDelivery = false,
    required this.seller,
    required this.transactionId,
  });
}

List<Transaction> transaction = [
  Transaction(
    truckNumber: "KAN - 345SY",
    product: Product.COCOA,
    amount: 33.4,
    buyer: "AFTL_Saminaka",
    dateTime: DateTime(2020),
    seller: "Animal Care",
    transactionId: "OTC-363-22573378487015320",
  ),
  Transaction(
    truckNumber: "KAN - 345SY",
    amount: 33.4,
    product: Product.GOLD,
    buyer: "AFTL_Saminaka",
    dateTime: DateTime(2020),
    seller: "Animal Care",
    transactionId: "OTC-363-22573378487015320",
    isAfexDelivery: true,
  ),
  Transaction(
    truckNumber: "KAN - 345SY",
    amount: 33.4,
    product: Product.MAZ,
    buyer: "AFTL_Saminaka",
    dateTime: DateTime(2020),
    seller: "Animal Care",
    transactionId: "OTC-363-22573378487015320",
    isAfexDelivery: true,
  ),
  Transaction(
    truckNumber: "KAN - 345SY",
    product: Product.COCOA,
    amount: 33.4,
    buyer: "AFTL_Saminaka",
    dateTime: DateTime(2020),
    seller: "Animal Care",
    transactionId: "OTC-363-22573378487015320",
  ),
  Transaction(
    truckNumber: "KAN - 345SY",
    amount: 33.4,
    product: Product.GOLD,
    buyer: "AFTL_Saminaka",
    dateTime: DateTime(2020),
    seller: "Animal Care",
    transactionId: "OTC-363-22573378487015320",
    isAfexDelivery: true,
  ),
  Transaction(
    truckNumber: "KAN - 345SY",
    amount: 33.4,
    product: Product.MAZ,
    buyer: "AFTL_Saminaka",
    dateTime: DateTime(2020),
    seller: "Animal Care",
    transactionId: "OTC-363-22573378487015320",
    isAfexDelivery: true,
  ),
  Transaction(
    truckNumber: "KAN - 345SY",
    product: Product.COCOA,
    amount: 33.4,
    buyer: "AFTL_Saminaka",
    dateTime: DateTime(2020),
    seller: "Animal Care",
    transactionId: "OTC-363-22573378487015320",
  ),
  Transaction(
    truckNumber: "KAN - 345SY",
    amount: 33.4,
    product: Product.GOLD,
    buyer: "AFTL_Saminaka",
    dateTime: DateTime(2020),
    seller: "Animal Care",
    transactionId: "OTC-363-22573378487015320",
    isAfexDelivery: true,
  ),
  Transaction(
    truckNumber: "KAN - 345SY",
    amount: 33.4,
    product: Product.MAZ,
    buyer: "AFTL_Saminaka",
    dateTime: DateTime(2020),
    seller: "Animal Care",
    transactionId: "OTC-363-22573378487015320",
    isAfexDelivery: true,
  ),
];
