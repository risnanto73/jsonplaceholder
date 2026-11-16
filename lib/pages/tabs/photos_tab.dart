import 'package:flutter/material.dart';
import '../../model/photos.dart';
import '../../service/api_service.dart';
import '../../widget/async_data_view.dart';
import '../../widget/photo_widget.dart';

class PhotosTab extends StatelessWidget {
  const PhotosTab({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncDataView<Photos>(
      title: 'Photos',
      onFetch: ApiService.fetchPhotos,
      itemBuilder: (context, photo, index) {
        return PhotoWidget(photo: photo);
      },
    );
  }
}
