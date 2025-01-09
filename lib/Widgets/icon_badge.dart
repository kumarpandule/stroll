import 'package:flutter/material.dart';
import 'package:stroll/theme.dart';

class ImageBadge extends StatelessWidget {
  final ImageIcon icon;
  final VoidCallback onTap;
  final int badgeCount;
  const ImageBadge(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.badgeCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      margin: EdgeInsets.only(left: 10.0),
      child: Stack(
        children: [
          IconButton(
            onPressed: () => onTap(),
            icon: icon,
          ),
          badgeCount > 0
              ? Positioned(
                  top: 8.0,
                  left: 28,
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          16), // Adjust the radius as needed
                      color: CustomColors.iconNote,
                    ),
                    child: Text(
                      badgeCount > 9 ? '9+' : badgeCount.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const IconBadge({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      margin: EdgeInsets.only(left: 12.0),
      child: Stack(
        children: [
          IconButton(
            onPressed: () => onTap(),
            icon: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 8.0,
            left: 28,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(16), // Adjust the radius as needed
                color: CustomColors.iconNote,
              ),
            ),
          )
        ],
      ),
    );
  }
}
