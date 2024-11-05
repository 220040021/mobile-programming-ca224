import 'package:flutter/material.dart';
import 'package:myapp/widgets/post_item_search.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Generate a list of PostItems (replace with real data as needed)
    final listPostItems = List.generate(14, (index) => const PostItem());

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 36,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: const [
              Icon(Icons.search, color: Colors.grey),
              SizedBox(width: 8),
              Text(
                'Search',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Three columns for grid layout
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            childAspectRatio: 1.0, // Ensures square aspect for images
          ),
          itemCount: listPostItems.length,
          itemBuilder: (context, index) {
            return listPostItems[index];
          },
        ),
      ),
    );
  }
}
