import '../../consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:
          "Cart Is Empty".text.fontFamily(semibold).color(darkFontGrey).makeCentered(),
    );
  }
}
