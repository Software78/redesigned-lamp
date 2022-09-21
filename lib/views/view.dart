part of 'controller.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  const HomeView(HomeController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.symmetric(
            horizontal: 16.r,
            vertical: 17.r,
          ),
          child: Column(
            children: [Stack()],
          ),
        ),
      ),
    );
  }
}
