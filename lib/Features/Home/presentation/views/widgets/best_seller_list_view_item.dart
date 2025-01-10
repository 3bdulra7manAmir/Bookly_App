import 'package:bookly/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget
{
  const BookListViewItem({super.key, this.padding, this.bookModel});

  final EdgeInsetsGeometry? padding;
  final BookModel? bookModel;


  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: padding ?? EdgeInsets.all(15),
      child: GestureDetector(
        onTap: ()
        {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children:
            [
              CustomBookImage(imageUrl: bookModel!.volumeInfo!.imageLinks!.thumbnail!),

              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        bookModel!.volumeInfo!.title!,
                        style: Styles.titleStyle18,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    const SizedBox(height: 3,),

                    Text(
                      bookModel!.volumeInfo!.authors![0],
                      style: Styles.titleStyle14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 3,),

                    Row(
                      children:
                      [
                        Text('Free',
                          style: Styles.titleStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        BookRating(
                          //rating: bookModel!.volumeInfo!.averageRating!,
                          //count: bookModel.volumeInfo.ratingsCount,
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
