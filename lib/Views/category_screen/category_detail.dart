import 'package:emart_app/Views/category_screen/item_detail.dart';
import 'package:get/get.dart';
import '../../consts/consts.dart';
import '../../widgets_common/bg_widget.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;

  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.white.fontFamily(bold).make(),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => "Baby clothing"
                          .text
                          .size(12.0)
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .makeCentered()
                          .box
                          .white
                          .size(120, 60)
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .rounded
                          .clip(Clip.antiAlias)
                          .outerShadowSm
                          .p8
                          .make()
                          .pOnly(right: 8)),
                ),
              ),
              20.heightBox,
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    mainAxisExtent: 250.0,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imgP5,
                            width: 200.0, height: 150.0, fit: BoxFit.cover),
                        const Spacer(),
                        "Laptop 4GB/64GB"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$499.99"
                            .text
                            .fontFamily(bold)
                            .color(redColor)
                            .size(16)
                            .make(),
                      ],
                    )
                        .box
                        .roundedSM
                        .outerShadowSm
                        .white
                        .margin(const EdgeInsets.symmetric(horizontal: 4.0))
                        .padding(const EdgeInsets.all(12.0))
                        .make().onTap(() {
                          Get.to(() => const ItemDetails(title: "Dummy Title"),);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
