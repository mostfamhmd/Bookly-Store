import 'package:bookly_store/features/Home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class ListViewBook extends StatelessWidget {
  const ListViewBook({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const BookItem();
        });
  }
}
