import 'package:animated_text_kit/animated_text_kit.dart';

import '../core/app_export.dart';

class CustomSearchBar extends StatelessWidget{
  final String hintText;
  final VoidCallback? onBackTap;

  CustomSearchBar({required this.hintText, this.onBackTap}) : super();

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: Duration(seconds: 1),
      delay: Duration(milliseconds: 400),
      child: Container(
        height: 43,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: MyColors().borderGrey),
            borderRadius: BorderRadius.circular(7),
            color: MyColors().containerGrey),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset(
                ImageConstant.search,
                height: 18,
                fit: BoxFit.fitHeight,
              ),
            ),
            Text(
              hintText,
              style: MyText.mediumPCG,
            ),
            DefaultTextStyle(
              style: MyText.mediumPCG,
              child: AnimatedTextKit(
                repeatForever: true,
                pause: Duration(milliseconds: 0),
                animatedTexts: [
                  RotateAnimatedText(
                    '"foods"',
                    textStyle: MyText.mediumPCG,
                  ),
                  RotateAnimatedText(
                    '"vegetables"',
                    textStyle: MyText.mediumPCG,
                  ),
                  RotateAnimatedText(
                    '"juice"',
                    textStyle: MyText.mediumPCG,
                  ),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Image.asset(
                      ImageConstant.mic,
                      height: 18,
                      fit: BoxFit.fitHeight,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

}
