import 'package:flutter/material.dart';
import 'package:super_hero/styles/app_colors.dart';
import 'package:super_hero/styles/app_text_styles.dart';

class PowerstatsItem extends StatefulWidget {
  String label;
  int value;
  PowerstatsItem({required this.label, required this.value, super.key});

  @override
  State<PowerstatsItem> createState() => _PowerstatsItemState();
}

class _PowerstatsItemState extends State<PowerstatsItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..addListener(() {
        setState(() {});
      });

    _sizeAnimation = Tween<double>(
      begin: 0,
      end: widget.value.toDouble(),
    ).animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.label,
                style: AppTextStyles.listTileTitleSmall(),
              ),
              Text(
                widget.value.toString(),
                style: AppTextStyles.listTileTitleSmall(),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 3.0,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Container(
              width: _getWidth(),
              height: 3.0,
              decoration: BoxDecoration(
                color: _getColor(),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ],
        ),
      ],
    );
  }

  double _getWidth() {
    final double fullScreenWidth = MediaQuery.of(context).size.width;
    final double percent = _sizeAnimation.value;
    return (fullScreenWidth * percent) / 100;
  }

  Color _getColor() {
    late Color color;
    double value = widget.value.toDouble();

    if (value <= 30.0) {
      color = Colors.red;
    } else if (value > 30.0 && value <= 50.0) {
      color = Colors.orange;
    } else if (value > 50.0 && value <= 70.0) {
      color = Colors.yellow;
    } else if (value > 70.0) {
      color = Colors.green;
    }

    return color;
  }
}
