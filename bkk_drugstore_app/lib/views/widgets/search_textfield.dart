import 'package:flutter/material.dart';
import 'package:bkk_drugstore_app/helpers/helpers.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({
    super.key,
    this.placeholder = 'ค้นหา',
    this.margin,
    this.focusNode,
    this.controller,
    this.borderWidth = 1,
  });

  final String? placeholder;
  final EdgeInsets? margin;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder myOutlineBorder({Color? color}) {
      return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        borderSide: BorderSide(width: borderWidth, color: color ?? Colors.grey.shade300),
      );
    }

    return Container(
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 40,
      margin: const EdgeInsets.fromLTRB(18, 12, 18, 12),
      child: TextField(
        focusNode: focusNode,
        controller: controller,
        textInputAction: TextInputAction.done,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8.0),
          hintStyle: context.themeData.body.copyWith(color: context.appColors.grey),
          hintText: placeholder,
          enabledBorder: myOutlineBorder(),
          focusedBorder: myOutlineBorder(color: context.appColors.darkGrey),
          prefixIcon: Container(
            margin: const EdgeInsets.only(left: 12),
            width: 30,
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: context.appColors.grey,
                ),
                const SizedBox(
                  width: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
