class BidModel {
  final String title, description, price, image,date;
  final int quantity, id;

  BidModel(
      {required this.title,
      required this.description,
      required this.price,
      required this.image,
      required this.quantity,
      required this.date,
      required this.id});
}
