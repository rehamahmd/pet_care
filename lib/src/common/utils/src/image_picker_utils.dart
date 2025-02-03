import 'package:image_picker/image_picker.dart';

class ImagePickerUtils {
  ImagePickerUtils._();
  static final ImagePicker _picker = ImagePicker();
  static Future<List<XFile>?> pickMultipleImages() async {
    try {
      final List<XFile> images = await _picker.pickMultiImage();
      return images;
    } catch (e) {
      return null;
    }
  }

  static Future<XFile?> pickSingleImageFromGallery() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      return image;
    } catch (e) {
      return null;
    }
  }

  static Future<XFile?> pickSingleImageFromCamera() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      return image;
    } catch (e) {
      return null;
    }
  }
}
