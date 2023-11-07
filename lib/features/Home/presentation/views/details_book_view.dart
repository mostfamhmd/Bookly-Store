import 'package:bookly_store/features/Home/presentation/views/widgets/Details%20Book%20Widgets/details_book_view_body.dart';
import 'package:flutter/material.dart';

class DetailsBookView extends StatelessWidget {
  const DetailsBookView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailsBookViewBody(),
    );
  }
}
