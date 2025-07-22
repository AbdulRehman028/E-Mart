import 'package:emart_app/Views/profile_screen/components/detail_card.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import '../../consts/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.edit, color: whiteColor))
                    .onTap(() {}),
                Row(
                  children: [
                    Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                        .box
                        .roundedFull
                        .clip(Clip.antiAlias)
                        .make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Abdulrehman Baig".text.fontFamily(semibold).white.make(),
                          "baig@gmail.com".text.white.make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: whiteColor),
                        ),
                        onPressed: () {},
                        child: logout.text.fontFamily(semibold).white.make()),
                  ],
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailCard(
                        count: "00",
                        title: "in your cart",
                        width: context.screenWidth / 3.4),
                    detailCard(
                        count: "32",
                        title: "in your wishlist",
                        width: context.screenWidth / 3.4),
                    detailCard(
                        count: "356",
                        title: "your orders",
                        width: context.screenWidth / 3.4),
                  ],
                ),
                60.heightBox,
                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const Divider(color: lightGrey);
                  },
                  itemCount: profileButtonsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(profileButtonIcons[index],width: 22,),
                      title: profileButtonsList[index]
                          .text
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .make(),
                    );
                  },
                )
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.symmetric(horizontal: 16))
                    .shadowSm
                    .make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
