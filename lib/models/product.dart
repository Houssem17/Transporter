class Product {
  final int id, price;
  final String title, description, image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 120,
    title: "Transporteur Caddy",
    image: "assets/images/Item_1.png",
    description:
        "Yhez w yjib w ra7ma la wilayet tounes lkol",
  ),
  Product(
    id: 4,
    price: 68,
    title: "Transporter2",
    image: "assets/images/Item_2.png",
    description:
        "Yhez w yjib w ra7ma la wilayet tounes lkolYhez w yjib w ra7ma la wilayet tounes lkol",
  ),
  Product(
    id: 9,
    price: 39,
    title: "Transporter3",
    image: "assets/images/Item_3.png",
    description:
        "Yhez w yjib w ra7ma la wilayet tounes lkolYhez w yjib w ra7ma la wilayet tounes lkol",
  ),
  Product(
    id: 10,
    price: 39,
    title: "Transporter4",
    image: "assets/images/Item_3.png",
    description:
    "Yhez w yjib w ra7ma la wilayet tounes lkolYhez w yjib w ra7ma la wilayet tounes lkolYhez w yjib w ra7ma la wilayet tounes lkol",
  ),
];
