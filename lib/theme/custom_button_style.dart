
import 'package:businessapp/core/app_export.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtonStyles {
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillPrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );

  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );


}

class PrimaryButton extends StatefulWidget {
  final Function() onTap;
  final String? text;
  final double? width;
  final double? radius;
  final bool? isSmallText;
  const PrimaryButton({Key? key, required this.onTap, this.text, this.width, this.isSmallText, this.radius}) : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        height: 50,
        width:widget.width??double.infinity,
        decoration: BoxDecoration(
          color: MyColors().primaryColor,
          borderRadius: BorderRadius.circular(widget.radius??10),
        ),
        child: Center(
          child: Text(
            widget.text??'',
            style:widget.isSmallText==true?MyText.roboto14Ww400: MyText.mediumWhite,
          ),
        ),
      ),
    );
  }
}


class CustomIconButton extends StatefulWidget {
  final String? title;
  final String image;
  final bool isSVG;
  final bool? isPrimaryColor;
  const CustomIconButton({Key? key, this.title, required this.image, required this.isSVG,  this.isPrimaryColor}) : super(key: key);

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(

        borderRadius:BorderRadius.circular(12),
      onTap: (){
Get.toNamed(AppRoutes.contact);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: widget.isPrimaryColor==true?MyColors().primaryColor: MyColors().borderGreen),
          color: widget.isPrimaryColor==true?MyColors().primaryColor:null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.isSVG==true?SvgPicture.asset(widget.image, height: 16,color:widget.isPrimaryColor==true?Colors.white: MyColors().borderGreen):Image.asset(widget.image, height: 16),
              SizedBox(width: 5),
              Text(widget.title??'', style:widget.isPrimaryColor==true?MyText.roboto14Ww400:MyText.roboto14Green400),
            ],
          ),
        ),
      ),
    );
  }
}


class BigIconButton extends StatefulWidget {
  final String? title;
  final String image;
  final bool isSVG;
  final bool? isPrimaryColor;
  const BigIconButton({Key? key, this.title, required this.image, required this.isSVG,  this.isPrimaryColor}) : super(key: key);

  @override
  State<BigIconButton> createState() => _BigIconButtonState();
}

class _BigIconButtonState extends State<BigIconButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(

      borderRadius:BorderRadius.circular(12),
      onTap: (){

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: widget.isPrimaryColor==true?MyColors().primaryColor: MyColors().borderGreen),
          color: widget.isPrimaryColor==true?MyColors().primaryColor:null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.isSVG==true?SvgPicture.asset(widget.image, height: 16,color:widget.isPrimaryColor==true?Colors.white: MyColors().borderGreen):Image.asset(widget.image, height: 16),
              SizedBox(width: 5),
              Text(widget.title??'', style:MyText.openSansAppbar),
            ],
          ),
        ),
      ),
    );
  }
}


