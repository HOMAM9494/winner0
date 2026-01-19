import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;
  final IconData icon;

  const TabButton({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            gradient:
                selected
                    ? LinearGradient(
                      colors: [Color(0xFF36D1DC), Color(0xFF5B86E5)],
                    )
                    : LinearGradient(
                      colors: [Color(0xFF34515C), Color(0xFF34515C)],
                    ),
            color: selected ? Colors.transparent : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 18, color: selected ? Colors.blue : Colors.grey),
              const SizedBox(width: 6),
              Text(
                title,
                style: TextStyle(
                  color: selected ? Colors.blue : Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
