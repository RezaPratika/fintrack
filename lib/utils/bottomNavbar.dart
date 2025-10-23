import 'package:flutter/material.dart';
import 'package:money_management/cores/theme.dart';
import 'package:money_management/features/screens/budget/budget.dart';
import 'package:money_management/features/screens/home/home.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [Home(), BudgetPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          _selectedIndex == 0
              ? FloatingActionButton(
                shape: CircleBorder(),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        title: const Text('Add New Item'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              decoration: const InputDecoration(
                                labelText: 'Title',
                              ),
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                labelText: 'Amount',
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancel'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // save action here
                              Navigator.pop(context);
                            },
                            child: const Text('Save'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Icon(Icons.add, color: Colors.white),
                backgroundColor: AppTheme.secondaryColor,
              )
              : null,
      appBar: AppBar(
        // leading: Image.network(
        //   "https://png.pngtree.com/png-clipart/20210606/original/pngtree-sign-free-icon-png-image_6387608.jpg",
        // ),
        title: Text(
          'FinTrack',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: GNav(
          gap: 8,
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() => _selectedIndex = index);
          },
          padding: const EdgeInsets.all(12),
          tabs: const [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.account_balance_wallet, text: 'Budget'),
            GButton(icon: Icons.insert_chart, text: 'Stats'),
            // GButton(icon: Icons.book, text: 'History'),
            GButton(icon: Icons.settings, text: 'Settings'),
          ],
        ),
      ),
    );
  }
}
