import 'package:flutter/material.dart';

import '../../../core/utils/text_styles.dart';

class RichTextSection extends StatelessWidget {
  const RichTextSection({
    super.key,
    required this.text,
    required this.buttonTitle,
    this.onTap,
  });
  final String text, buttonTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppTextStyles.bodysmall),
        TextButton(onPressed: onTap, child: Text(buttonTitle)),
      ],
    );
  }
}
