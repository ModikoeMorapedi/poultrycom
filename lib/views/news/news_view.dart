import 'package:flutter/material.dart';
import 'package:poultrycom/view_models/news_view_model.dart';
import 'package:poultrycom/widgets/widgets.dart';
import 'package:provider/provider.dart';

import 'widgets/news_body_widget.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    NewsViewModel newsViewModel = Provider.of<NewsViewModel>(context);
    return Scaffold(
      body: newsViewModel.isLoading == true
          ? Container()
          : Column(
              children: [
                //Header
                const AppBarWidget(
                  title: "News",
                ),
                //Body
                NewsBodyWidget(newsViewModel: newsViewModel)
                //Footer
              ],
            ),
    );
  }
}
