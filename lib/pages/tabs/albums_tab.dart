import 'package:flutter/material.dart';
import '../../model/albums.dart';
import '../../service/api_service.dart';
import '../../widget/async_data_view.dart';
import '../../widget/album_widget.dart';

class AlbumsTab extends StatelessWidget {
  const AlbumsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncDataView<Albums>(
      title: 'Albums',
      onFetch: ApiService.fetchAlbums,
      itemBuilder: (context, album, index) {
        return AlbumWidget(album: album);
      },
    );
  }
}
