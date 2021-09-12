import 'package:class_project/models/class_models.dart';
import 'package:flutter/material.dart';

class TopicPage extends StatelessWidget {
  final Class topics;
  const TopicPage({Key? key, required this.topics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topics Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: topics.classTopics.length,
              itemBuilder: (BuildContext context, int index) => InkWell(
                onTap: () {},
                child: Card(
                  child: Container(
                    height: 72,
                    width: 72,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            topics.classTopics,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
