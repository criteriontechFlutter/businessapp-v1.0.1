import 'package:flutter/material.dart';

import '../core/hex.dart';
import 'custom_text_style.dart';

class CustomTextField extends StatefulWidget {
  final String? image;
  final String hintText;
  final bool? isPassword;
  CustomTextField(
      {Key? key, this.image, required this.hintText, this.isPassword})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscure = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: HexColor('#EAEAEA'))),
      child: Row(
        children: [
          Visibility(
            visible: widget.image != null,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Image.asset(widget.image.toString()),
            ),
          ),
          Visibility(
              visible: widget.image == null,
              child: SizedBox(
                width: 20,
              )),
          Expanded(
            child: TextField(
              obscureText: obscure,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: MyText.smallGrey,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                    icon: Visibility(
                        visible: widget.isPassword ?? false,
                        child: Icon(
                          obscure
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          size: 15,
                          color: HexColor('#3F4A46'),
                        )),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
