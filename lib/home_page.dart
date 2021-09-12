import 'package:class_project/models/class_models.dart';
import 'package:class_project/topic_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Class> classes = [
    Class(className: 'Class1', classTopics: 'Git', classDetails: 'Learn git'),
    Class(
        className: 'Class2',
        classTopics: 'abstraction',
        classDetails: 'learn abstraction'),
    Class(
        className: 'Class3',
        classTopics: 'abstraction',
        classDetails: 'learn abstraction'),
    Class(
        className: 'Class4',
        classTopics: 'inheritance',
        classDetails: 'learn abstraction'),
    Class(
        className: 'Class5',
        classTopics: 'encapsulation',
        classDetails: 'learn abstraction'),
    Class(
        className: 'Class6',
        classTopics: 'polymorphysm',
        classDetails: 'learn abstraction'),
    Class(
        className: 'Class7',
        classTopics: 'solid principle"',
        classDetails: 'learn abstraction'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: classes.length,
              itemBuilder: (BuildContext context, int index) => InkWell(
                onTap: () {
                  final route =
                      MaterialPageRoute(builder: (BuildContext context) {
                    return TopicPage(
                      topics: classes[index],
                    );
                  });
                  Navigator.push(context, route);
                },
                child: Card(
                  child: Container(
                    height: 72,
                    width: 72,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            classes[index].className,
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
