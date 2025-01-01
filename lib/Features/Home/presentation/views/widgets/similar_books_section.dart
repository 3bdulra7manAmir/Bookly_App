import 'package:bookly/Features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("You can Also Like:", style: Styles.titleStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SimilarBooksListView(),
      ],
    );
  }
}