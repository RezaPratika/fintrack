import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Recenttransactioncard extends StatelessWidget {
  const Recenttransactioncard({super.key});

  @override
  Widget build(BuildContext context) {
    var indicatorWidth = MediaQuery.of(context).size.width - 125;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 0,
          ),
          tileColor: Colors.white,
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.amberAccent[100],
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.local_restaurant_rounded,
              size: 20,
              color: Colors.orangeAccent,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Beli sepatu',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                '12 Mei 2025',
                style: Theme.of(
                  context,
                ).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w100),
              ),
            ],
          ),
          trailing: Text(
            '- Rp 200.000',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
