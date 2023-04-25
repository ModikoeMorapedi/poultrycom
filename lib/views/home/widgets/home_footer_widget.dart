import 'package:flutter/material.dart';
import 'package:poultrycom/utils/font_styles_util.dart';
import 'package:poultrycom/widgets/frame_widget.dart';

class HomeFooterWidget extends StatelessWidget {
  const HomeFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
      ),
      // height: MediaQuery.of(context).size.height / 2,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Poultry", style: poultryFontSize20Black),
        const SizedBox(
          height: 20,
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: const [
            FrameWidget(
              src:
                  "https://ganico.co.za/wp-content/uploads/2020/11/Farm-Eggs-04.jpg",
              fit: BoxFit.fill,
            ),
            FrameWidget(
              src:
                  "https://sentientmedia.org/wp-content/uploads/2022/02/laying-hen-cage-breeding-43_46551033575_o-e1558694404783-1.jpg",
              fit: BoxFit.fill,
            ),
            FrameWidget(
              src:
                  "https://upload.wikimedia.org/wikipedia/commons/6/65/Poultry_Classes_Blog_photo_-_Flickr_-_USDAgov.jpg",
              fit: BoxFit.cover,
            ),
            FrameWidget(
              src:
                  "https://fairfieldmeats.co.za/wp-content/uploads/2020/06/3-Fairfield-Whole-Chicken-Online-Butchery.jpg",
              fit: BoxFit.fill,
            ),
          ],
        )
      ]),
    );
  }
}
