import 'package:flutter/material.dart';
import 'package:money_management/features/widgets/budgetCard.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: Column(
          children: [
            // Budget
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF003156), Color(0xFF001A2C)],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Monthly Budget',
                        style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Rp 10.000.000',
                        style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Allocated',
                            style: TextTheme.of(context).bodySmall?.copyWith(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Rp 8.000.000',
                            style: TextTheme.of(context).bodyMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Remaining',
                            style: TextTheme.of(context).bodySmall?.copyWith(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Rp 2.000.000',
                            style: TextTheme.of(context).bodyMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Budget Category
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Budget Category',
                      style: TextTheme.of(
                        context,
                      ).bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.add_circle_outline),
                          Text('Add Category'),
                        ],
                      ),
                    ),
                  ],
                ),
                Budgetcard(
                  name: 'Food & Drink',
                  amount: 'Rp. 1.000.000',
                  color: Colors.orange,
                  progress: 0.8,
                  icon: Icons.restaurant,
                  spent: '12',
                ),
                SizedBox(height: 10),
                Budgetcard(
                  name: 'Transportation',
                  amount: 'Rp. 1.500.000',
                  color: Colors.blue,
                  progress: 0.8,
                  icon: Icons.motorcycle,
                  spent: '12',
                ),
                SizedBox(height: 10),
                Budgetcard(
                  name: 'Food & Drink',
                  amount: 'Rp. 1.000.000',
                  color: Colors.orange,
                  progress: 0.2,
                  icon: Icons.restaurant,
                  spent: '12',
                ),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
