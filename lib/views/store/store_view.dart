import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../../view_models/store_view_model.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    StoreViewModel storeViewModel = Provider.of<StoreViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    color: Colors.yellow,
                    height: 50,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 50,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: 60,
              color: Colors.blue,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  color: Colors.green,
                  width: 70,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("Eggs"),
                ),
              ),
            ),
            Expanded(
                child: StreamBuilder<QuerySnapshot>(
                    stream: storeViewModel.getData(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      return ListView.builder(
                        itemCount: snapshot.data?.docs.length,
                        itemBuilder: (context, index) =>
                            snapshot.hasData == true
                                ? Container(
                                    margin: EdgeInsets.only(
                                        top: 30, left: 30, right: 30),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            color: Colors.grey,
                                            height: 100,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            color: Colors.amber,
                                            height: 100,
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text("BusinessName"),
                                                Text("Seller"),
                                                Text("Remaining"),
                                                Text("contacts"),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                : Container(),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
