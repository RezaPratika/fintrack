import 'package:flutter/material.dart';
import 'package:money_management/features/widgets/categoryCard.dart';
import 'package:money_management/features/widgets/recentTransactionCard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(
                    'Total Budget',
                    style: TextTheme.of(context).bodyLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Rp 10.000.000',
                    style: TextTheme.of(context).headlineMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Budget Summary
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Budget Summary",
                    style: TextTheme.of(
                      context,
                    ).bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  CategoryCard(
                    name: 'Food & Drink',
                    amount: 'Rp. 1.000.000',
                    color: Colors.orange,
                    progress: 0.5,
                    icon: Icons.restaurant,
                  ),
                  SizedBox(height: 10),
                  CategoryCard(
                    name: 'Transportation',
                    amount: 'Rp. 1.500.000',
                    color: Colors.blue,
                    progress: 0.7,
                    icon: Icons.restaurant,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Expenses
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Transaction",
                        style: TextTheme.of(
                          context,
                        ).bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View All',
                          style: TextTheme.of(context).bodySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Recenttransactioncard(), // ✅ Fixed name
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
