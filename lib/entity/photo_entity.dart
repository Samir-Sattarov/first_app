class PhotoEntity {
  final String title;
  final String image;

  const PhotoEntity({required this.title, required this.image});

  factory PhotoEntity.fromJson(Map<String, dynamic> json) {
    return PhotoEntity(
      title: json['title'],
      image: json['url'],
    );
  }
}
