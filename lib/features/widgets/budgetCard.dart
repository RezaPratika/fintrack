import 'package:flutter/material.dart';

class Budgetcard extends StatefulWidget {
  final String name;
  final String amount;
  final double progress;
  final String spent;
  final MaterialColor color;
  final IconData icon;
  const Budgetcard({
    super.key,
    required this.name,
    required this.amount,
    required this.progress,
    required this.spent,
    required this.color,
    required this.icon,
  });

  @override
  State<Budgetcard> createState() => _BudgetcardState();
}

class _BudgetcardState extends State<Budgetcard> {
  @override
  Widget build(BuildContext context) {
    var indicatorWidth = MediaQuery.of(context).size.width - 125;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: widget.color[100],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(widget.icon, size: 15, color: widget.color),
                  ),
                  SizedBox(width: 10),
                  Text(
                    widget.name,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              PopupMenuButton<String>(
                icon: const Icon(Icons.more_vert, size: 18),
                color: Colors.white, // background color of the popup
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 6,
                position: PopupMenuPosition.under,
                itemBuilder:
                    (context) => [
                      // 🖊️ Edit Budget
                      PopupMenuItem(
                        value: 'edit',
                        height: 36,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.edit_outlined,
                              size: 18,
                              color: Colors.black87,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Edit Budget',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // 📋 View Details
                      PopupMenuItem(
                        value: 'view',
                        height: 36,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.description_outlined,
                              size: 18,
                              color: Colors.black87,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'View Details',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // 🗑️ Delete Category (red)
                      PopupMenuItem(
                        value: 'delete',
                        height: 36,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.delete_outline,
                              size: 18,
                              color: Colors.red,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Delete Category',
                              style: TextStyle(fontSize: 14, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                onSelected: (value) {
                  if (value == 'edit') {
                    // Handle edit
                  } else if (value == 'view') {
                    // Handle view
                  } else if (value == 'delete') {
                    // Handle delete
                  }
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.amount,
                style: TextTheme.of(
                  context,
                ).bodySmall?.copyWith(fontSize: 12, color: Color(0xFF718096)),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '${(widget.progress * 100).toInt()}% spent ',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF718096),
                  ),
                ),
              ),
            ],
          ),

          LinearProgressIndicator(
            value: widget.progress,
            backgroundColor: const Color(0xFFE2E8F0),
            valueColor: AlwaysStoppedAnimation<Color>(widget.color),
            minHeight: 6,
            borderRadius: BorderRadius.circular(3),
          ),
        ],
      ),
    );
  }
}
