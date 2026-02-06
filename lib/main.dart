import 'package:flutter/material.dart';
import 'package:flutter_secure_storage_helper/flutter_secure_storage_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: StorageDemo());
  }
}

class StorageDemo extends StatelessWidget {
  const StorageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Secure Storage Helper')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                await SecureStorageHelper.write('token', 'my-secret-token');
              },
              child: const Text('Save Token'),
            ),
            ElevatedButton(
              onPressed: () async {
                final token = await SecureStorageHelper.read('token');
                debugPrint('Token: $token');
              },
              child: const Text('Read Token'),
            ),
            ElevatedButton(
              onPressed: () async {
                await SecureStorageHelper.delete('token');
              },
              child: const Text('Delete Token'),
            ),
            ElevatedButton(
              onPressed: () async {
                await SecureStorageHelper.clear();
              },
              child: const Text('Clear All'),
            ),
          ],
        ),
      ),
    );
  }
}
