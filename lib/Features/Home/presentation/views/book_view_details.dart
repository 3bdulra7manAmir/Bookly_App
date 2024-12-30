import 'package:bookly/Features/Home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget
{
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: const Scaffold(
        body: BookDetailsViewBody(),
      ));
  }
}
