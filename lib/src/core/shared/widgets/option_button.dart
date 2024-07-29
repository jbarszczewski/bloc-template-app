import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String title;

  final int optionKey;
  final bool isSelected;
  final Function(int optionKey)? onChanged;
  final double? height;
  final double? width;
  final Widget? leading;
  final TextStyle? titleStyleOverride;

  const OptionButton(
      {super.key,
      required this.title,
      required this.optionKey,
      required this.isSelected,
      required this.onChanged,
      this.height,
      this.width,
      this.leading,
      this.titleStyleOverride});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(left: 10, right: 10),
                foregroundColor: isSelected
                    ? const Color.fromARGB(255, 255, 255, 255)
                    : const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: const BorderSide(
                      color: Colors.white, width: 2), // Add this line
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (leading != null) SizedBox(width: 26, child: leading!),
                Expanded(
                  child: Text(title,
                      style: titleStyleOverride ??
                          const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900)),
                ),
                Checkbox(
                  value: isSelected,
                  onChanged: null,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                  checkColor: Colors.black, // Change the check color to black
                  activeColor:
                      Colors.transparent, // Make the fill color transparent
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        color: Colors.black), // Add a black border
                    borderRadius: BorderRadius.circular(4),
                  ),
                )
              ],
            ),
            onPressed: () {
              if (onChanged != null) {
                onChanged!(optionKey);
              }
            }),
      ),
    );
  }
}
