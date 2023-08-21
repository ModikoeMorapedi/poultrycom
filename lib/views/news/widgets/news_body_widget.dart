import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:poultrycom/view_models/news_view_model.dart';

class NewsBodyWidget extends StatelessWidget {
  const NewsBodyWidget({super.key, this.newsViewModel});
  final NewsViewModel? newsViewModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: false,
        itemCount: newsViewModel!.articles!.length,
        itemBuilder: (BuildContext context, int index) => Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 2),
          ),
          margin: const EdgeInsets.all(25),
          padding: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height / 5,
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: newsViewModel!.articles![index].urlToImage ?? "",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                height: MediaQuery.of(context).size.height / 4.5,
                width: 65,
                fit: BoxFit.fill,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: 220,
                child: Text(
                  newsViewModel!.articles![index].title!,
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
