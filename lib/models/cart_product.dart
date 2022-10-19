class CartProduct {
  final String id;
  final String title;
  final String subtitle;
  final int price;
  int quantity;

  CartProduct(
      {required this.subtitle,
      required this.price,
      required this.quantity,
      required this.id,
      required this.title});
}
