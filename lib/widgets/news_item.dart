import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final String publisher;
  final String publishAt;
  final String id;
  final Function(String id)? onTap;

  const NewsItem(
      {super.key,
      required this.title,
      required this.publisher,
      required this.publishAt,
      this.imageUrl,
      required this.id,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: onTap != null ? () => onTap!(id) : null,
        child: Card(
          elevation: 5,
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xffF8F8F8),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 70% space for the text content
                Expanded(
                  flex: 7, // 70% of the available space
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            publisher,
                            maxLines: 1,
                            softWrap: true,
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(publishAt,
                              maxLines: 1,
                              softWrap: true,
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12))
                        ],
                      )
                    ],
                  ),
                ),
                // 30% space for the image or icon
                Expanded(
                  flex: 3, // 30% of the available space
                  child: imageUrl != null && imageUrl!.isNotEmpty
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            imageUrl!,
                            height: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              // Handle image loading errors
                              return const Icon(
                                Icons.broken_image,
                                color: Colors.grey,
                              );
                            },
                          ),
                        )
                      : const Icon(
                          Icons.image, // Placeholder icon for null image
                          color: Colors.grey,
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
