import 'package:flutter/material.dart';
import 'package:flutter_application_1/extensions.dart';

class AddRecipeScreen extends StatefulWidget {
  const AddRecipeScreen({super.key});

  @override
  _AddRecipeScreenState createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _imageUrlController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _instructionsController = TextEditingController();

  String? _validate(String value, String errorText) {
    if (value.isEmpty) {
      return errorText;
    }
    return null;
  }

  String? _validateUrl(String value, String errorText) {
    if (value.isEmpty ||
        (!value.startsWith('http://') && !value.startsWith('https://'))) {
      return errorText;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: context.colorScheme.primary,
        title: Text(
          'ADD RECIPE',
          style: TextStyle(
            color: context.colorScheme.background,
            fontFamily: 'EPAM2',
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'EPAM2',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Recipe Name'),
                validator: (value) {
                  return _validate(value ?? '', 'Please enter a recipe name');
                },
              ),
              TextFormField(
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'EPAM2',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                controller: _imageUrlController,
                decoration: const InputDecoration(labelText: 'Image URL'),
                validator: (value) {
                  return _validateUrl(value ?? '', 'Please enter a valid URL');
                },
              ),
              TextFormField(
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'EPAM2',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) {
                  return _validate(
                      value ?? '', 'Please enter a recipe description');
                },
              ),
              TextFormField(
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'EPAM2',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                controller: _instructionsController,
                decoration: const InputDecoration(labelText: 'Instructions'),
                validator: (value) {
                  return _validate(
                      value ?? '', 'Please enter recipe instructions');
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Not adding to the list yet, should add to list in further versions
                    Navigator.pop(context);
                  }
                },
                child: const Text('Add Recipe'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _imageUrlController.dispose();
    _descriptionController.dispose();
    _instructionsController.dispose();
    super.dispose();
  }
}
