import 'package:flutter/material.dart';

class LibrarySearch extends StatelessWidget {
  const LibrarySearch({super.key});


  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Ara",
              hintStyle: TextStyle(color: Colors.white.withOpacity(.60)),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white.withOpacity(.60),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white.withOpacity(.10),
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.filter_list,
              color: Colors.white.withOpacity(.60),
              size: 30,
            ),
            Text(
              "Filtrele",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}
