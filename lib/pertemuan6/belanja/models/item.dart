class Item {
  String name; //menyimpan nama barang
  int price; //menyimpan harga barang
  String imageUrl;
  int stock;
  double rating;

  // Constructor untuk inisialisasi objek Item
  Item(
      {required this.name,
      required this.price,
      required this.imageUrl,
      required this.rating,
      required this.stock});
}
