import 'package:businessapp/core/app_export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackTap;
  final bool? showBackButton;

  CustomAppBar({required this.title, this.onBackTap, this.showBackButton}) : super();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      toolbarHeight: 60,
      leading:showBackButton==true? Padding(
        padding: const EdgeInsets.only(left: 29.0),
        child: GestureDetector(
          onTap: onBackTap ?? () => Navigator.of(context).pop(),
          child: Image.asset(ImageConstant.backarrow,
              width: 20),
        ),
      ):SizedBox(),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.filter_alt_outlined,
            color: Colors.white,
          ),
          onPressed: () {
          },
        ),
      ],
      backgroundColor:
          MyColors().primaryColor,
      title: Text(
        title,
        style: MyText.openSansAppbar,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
