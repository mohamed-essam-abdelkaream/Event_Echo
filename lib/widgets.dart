import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildArticleItem(article)=>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage('${article['urlToImage']}'),
              fit: BoxFit.cover,
            )),
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  "${article['title']}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                "${article['publishedAt']}",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      )
    ],
  ),
);