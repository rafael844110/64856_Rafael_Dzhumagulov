import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cullinarium/core/utils/constants/app_consts.dart';
import 'package:cullinarium/features/chef/data/datasources/dummy_data.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfileService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  // User data
  Future<dynamic> updateUserData({
    required String userId,
    required Map<String, dynamic> data,
  }) async {
    await _firestore
        .collection(AppConsts.usersCollection)
        .doc(userId)
        .update(data);
  }

  // Update Chef data
  Future<void> updateChefData(String uid, Map<String, dynamic> data) async {
    try {
      // Extract images from data if they exist
      final images = data['images'] as List<String>?;
      final newImages = <String>[];

      if (images != null) {
        // Upload new images (those that start with 'file://')
        for (final image in images) {
          if (image.startsWith('file://')) {
            final file = File(image.replaceFirst('file://', ''));
            if (await file.exists()) {
              final path =
                  'chef_images/$uid/${DateTime.now().millisecondsSinceEpoch}.jpg';
              final ref = _storage.ref().child(path);
              await ref.putFile(file);
              final downloadUrl = await ref.getDownloadURL();
              newImages.add(downloadUrl);
            }
          } else {
            // Keep existing URLs
            newImages.add(image);
          }
        }

        // Update data with new image URLs
        data['images'] = newImages;
      }

      // Update chef data in Firestore
      await _firestore
          .collection(AppConsts.chefsCollection)
          .doc(uid)
          .update(data);
    } catch (e) {
      throw Exception('Failed to update chef data: $e');
    }
  }

  /// Update author data
  Future<void> updateAuthorData(String uid, Map<String, dynamic> data) async {
    await _firestore
        .collection(AppConsts.authorsCollection)
        .doc(uid)
        .update(data);
  }

  // Update user profile image
  // Upload profile image to Firebase Storage
  Future<String> uploadProfileImage({
    required File imageFile,
    required String userId,
    required String userType,
  }) async {
    final path = 'profile_images/$userType/$userId.jpg';
    final ref = _storage.ref().child(path);

    await ref.putFile(imageFile);

    final image = await ref.getDownloadURL();
    updateProfileImageUrl(userId: userId, imageUrl: image, userType: userType);

    return image;
  }

  // Add uploaded image URL to Firestore
  Future<void> updateProfileImageUrl({
    required String userId,
    required String imageUrl,
    required String userType,
  }) async {
    String collectionPath;

    switch (userType) {
      case 'chef':
        collectionPath = AppConsts.chefsCollection;
        break;
      case 'author':
        collectionPath = AppConsts.authorsCollection;
        break;
      case 'user':
        collectionPath = AppConsts.usersCollection;
        break;
      default:
        throw Exception('Invalid user type');
    }

    await _firestore.collection(collectionPath).doc(userId).update({
      'avatar': imageUrl,
    });
  }

  Future<void> addDummyData() async {
    for (final chef in russianChefDummyData) {
      final docRef = _firestore.collection(AppConsts.chefsCollection).doc();
      await docRef.set(chef);
    }
  }
}
