## 🔐 Flutter Secure Storage Helper

A lightweight Secure Storage Helper library for Flutter that simplifies storing and retrieving sensitive data such as tokens, credentials, and session information using platform-level encryption.

---
## ✨ Features

- 🔒 Secure key-value storage

- 📱 Android & iOS support

- 🚫 No BuildContext required

- 🧩 Simple static API

- 🧼 Clear / delete helpers

- 📦 Package-ready & reusable

- 🧪 Easy to test and extend

---
## 📦 Installation

Local package
```
dependencies:
  flutter_secure_storage_helper:
   git:
    path: https://github.com/Excelsior-Technologies-Community/flutter_secure_storage_helper.git
```
the run:
```
flutter pub get
```

---
## 📁 Folder Structure
```
lib/
├── flutter_secure_storage_helper.dart
└── src/
    └── secure_storage_helper.dart
```
---
## 🚀 Getting Started
### ✍️ Write Secure Data
```
await SecureStorageHelper.write(
  'auth_token',
  'my-secret-token',
);
```
### 📖 Read Secure Data
```
final token = await SecureStorageHelper.read('auth_token');

if (token != null) {
  print('Token: $token');
}
```
### 🗑 Delete a Key
```
await SecureStorageHelper.delete('auth_token');
```
### 🧹 Clear All Secure Data
```
await SecureStorageHelper.clear();
```
---
## 🧪 Example App
```
ElevatedButton(
  onPressed: () async {
    await SecureStorageHelper.write(
      'token',
      'secure-value',
    );
  },
  child: const Text('Save Token'),
);
```
---
## 🔐 Platform Security Details
### Android

- Uses EncryptedSharedPreferences

- Data encrypted using AES-256

### iOS

- Uses Keychain

- Data protected until first device unlock

---
## 📄 License

MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this Flutter Image Compression library and associated documentation files
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM,
OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
