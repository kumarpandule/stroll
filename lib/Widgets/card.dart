import 'package:flutter/material.dart';
import 'package:stroll/theme.dart';

class OptionCard extends StatelessWidget {
  final String title;
  final String index;
  final bool isSelected;
  final VoidCallback onTap;
  const OptionCard(
      {super.key,
      required this.title,
      required this.index,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Color(0xFF222222),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: isSelected ? CustomColors.active : Colors.transparent,
          width: 2,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              clipBehavior: Clip.none,
              padding: EdgeInsets.all(6.0),
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: isSelected ? CustomColors.active : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? CustomColors.active : Colors.white,
                  width: 2,
                ),
              ),
              child: Text(
                index,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              clipBehavior: Clip.none,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Text(
                title,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
