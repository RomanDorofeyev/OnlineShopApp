import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class ColorsAndSizes extends StatelessWidget {
  const ColorsAndSizes({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Color',
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.normal),
              ),
              Row(
                children: [
                  ColorDot(
                    color: product.colors[0],
                    isSelected: true,
                  ),
                  ColorDot(color: spareColors[0]),
                  ColorDot(color: spareColors[1]),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'Size\n',
                    style: TextStyle(color: textColor)),
                TextSpan(
                    text: "${product.size} \"",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      padding: EdgeInsets.all(2.5),
      margin:
      EdgeInsets.only(top: defaultPadding / 4, right: defaultPadding / 2),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          )),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}