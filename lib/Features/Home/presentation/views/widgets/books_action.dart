import 'package:bookly/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget
{
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        Expanded(
            child: CustomButton(
              onPressed: () async
              {
                Uri uri = Uri.parse(bookModel.accessInfo!.webReaderLink!);
                if ( await canLaunchUrl(uri) )
                {
                  await launchUrl(uri);
                }
              },
          buttonText: "Free",
          fontSize: 16,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(12)),
        )),
        Expanded(
            child: CustomButton(
              onPressed: () async
              {
                Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);
                if ( await canLaunchUrl(uri) )
                {
                  await launchUrl(uri);
                }
              },
          buttonText: "Preview",
          fontSize: 16,
          backgroundColor: Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(12)),
        )),
      ],
    );
  }
}
