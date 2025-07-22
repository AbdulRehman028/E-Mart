import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/our_button.dart';

import '../../consts/consts.dart';
import '../home_screen/components/featured_button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;

  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
            color: darkFontGrey,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
            color: darkFontGrey,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding:  EdgeInsets.all(8),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxSwiper.builder(
                        itemCount: 3,
                        autoPlay: true,
                        height: 300,
                        aspectRatio: 16 / 9,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc5,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }),
                    10.heightBox,
                    title!.text
                        .size(16)
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make(),
                    10.heightBox,
                    VxRating(
                      onRatingUpdate: (value) {},
                      isSelectable: true,
                      maxRating: 5,
                      value: 4.0,
                      size: 20,
                      selectionColor: golden,
                      normalColor: textfieldGrey,
                    ),
                    10.heightBox,
                    "Price: \$ 20"
                        .text
                        .size(18)
                        .color(redColor)
                        .fontFamily(bold)
                        .make(),
                    10.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              10.heightBox,
                              "Seller".text.fontFamily(semibold).make(),
                              5.heightBox,
                              "In House brand"
                                  .text
                                  .fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .make(),
                            ],
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child:
                              Icon(Icons.message_rounded, color: darkFontGrey),
                        ),
                      ],
                    )
                        .box
                        .height(60)
                        .color(textfieldGrey)
                        .padding(const EdgeInsets.symmetric(horizontal: 16.0))
                        .make(),
                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Color: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                                children: List.generate(
                                    3,
                                    (index) => VxBox()
                                        .size(40, 40)
                                        .roundedFull
                                        .color(Vx.randomPrimaryColor)
                                        .margin(const EdgeInsets.symmetric(
                                            horizontal: 4.0))
                                        .make()))
                          ],
                        ).box.padding(EdgeInsets.all(8.0)).make(),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Color: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove)),
                                "0".text
                                    .size(16)
                                    .color(darkFontGrey)
                                    .fontFamily(bold)
                                    .make(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add)),
                                10.widthBox,
                                "0 available".text.color(darkFontGrey).make(),
                              ],
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8.0)).make(),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Total: ".text.color(textfieldGrey).make(),
                            ),
                            "\$0.00".text.color(redColor).fontFamily(bold).size(16).make(),
                          ],
                        ).box.padding(const EdgeInsets.all(8.0)).make(),
                      ],
                    ).box.white.shadowSm.make(),

                    10.heightBox,
                    "Description".text.size(16).color(darkFontGrey).fontFamily(semibold).make(),
                    10.heightBox,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus feugiat, molestie ipsum et, eleifend nunc. Nulla facilisi. Nullam ac nisi non nunc vehicula ultricies. Nullam nec sapien et arcu gravida malesuada. Nullam sit amet semper purus. Nullam nec sapien et arcu gravida malesuada. Nullam sit amet semper purus. Nullam nec sapien".text.color(fontGrey).make(),
                    10.heightBox,
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List<Widget>.generate(itemDetailsButtonsList.length, (index) => ListTile(
                        title: itemDetailsButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                        trailing: const Icon(Icons.arrow_forward),
                      )),
                    ),
                    20.heightBox,
                    productYouLike.text.size(16).color(darkFontGrey).fontFamily(semibold).make(),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          6,
                              (index) => Column(
                            children: [
                              Image.asset(imgP1,
                                  width: 150.0, fit: BoxFit.cover),
                              10.heightBox,
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
                              .white
                              .margin(const EdgeInsets.symmetric(horizontal: 4.0))
                              .padding(const EdgeInsets.all(8.0))
                              .make(),
                        ).toList(),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ourButton(
                color: redColor, title: "Add to Cart", onPress: () {},textColor: Colors.white),
          ),
        ],
      ),
    );
  }
}
