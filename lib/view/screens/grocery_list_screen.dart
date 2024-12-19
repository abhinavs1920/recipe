import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/core/utils/logger.dart';

class GroceryItem {
  final String name;
  final String category;
  bool isChecked;

  GroceryItem({
    required this.name,
    required this.category,
    this.isChecked = false,
  });
}

class GroceryListScreen extends StatefulWidget {
  const GroceryListScreen({super.key});

  @override
  State<GroceryListScreen> createState() => _GroceryListScreenState();
}

class _GroceryListScreenState extends State<GroceryListScreen> {
  final List<GroceryItem> _items = [
    GroceryItem(name: 'Milk', category: 'Dairy'),
    GroceryItem(name: 'Eggs', category: 'Dairy'),
    GroceryItem(name: 'Bread', category: 'Bakery'),
    GroceryItem(name: 'Apples', category: 'Fruits'),
    GroceryItem(name: 'Bananas', category: 'Fruits'),
    GroceryItem(name: 'Chicken', category: 'Meat'),
  ];

  void _addItem(String name, String category) {
    setState(() {
      _items.add(GroceryItem(name: name, category: category));
    });
    logger.i('Added grocery item: $name in category: $category');
  }

  void _removeItem(int index) {
    final item = _items[index];
    setState(() {
      _items.removeAt(index);
    });
    logger.i('Removed grocery item: ${item.name}');
  }

  void _toggleItem(int index) {
    setState(() {
      _items[index].isChecked = !_items[index].isChecked;
    });
    logger.i('Toggled grocery item: ${_items[index].name} to ${_items[index].isChecked}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grocery List',
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              _showAddItemDialog();
            },
          ),
        ],
      ),
      body: _items.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.shopping_basket_outlined,
                    size: 64,
                    color: Color(0xFF40CC92),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Your grocery list is empty',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Add items to your grocery list!',
                    style: GoogleFonts.nunito(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final item = _items[index];
                return Dismissible(
                  key: Key(item.name),
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 16),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    _removeItem(index);
                  },
                  child: CheckboxListTile(
                    title: Text(
                      item.name,
                      style: GoogleFonts.nunito(
                        decoration: item.isChecked ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    subtitle: Text(
                      item.category,
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                      ),
                    ),
                    value: item.isChecked,
                    onChanged: (bool? value) {
                      _toggleItem(index);
                    },
                    activeColor: const Color(0xFF40CC92),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddItemDialog();
        },
        backgroundColor: const Color(0xFF40CC92),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddItemDialog() {
    final nameController = TextEditingController();
    final categoryController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Add Item',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Item Name',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: categoryController,
                decoration: const InputDecoration(
                  labelText: 'Category',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    categoryController.text.isNotEmpty) {
                  _addItem(nameController.text, categoryController.text);
                  Navigator.pop(context);
                }
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
