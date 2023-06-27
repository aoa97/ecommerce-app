import 'package:ecommerce/features/home/domain/entities/product.dart';

class DummyData {
  static final List<Product> products = [
    const Product(
      id: 1,
      image: "https://i.dummyjson.com/data/products/1/thumbnail.jpg",
      title: "iPhone 9",
      brand: "Apple",
      price: 549,
      priceBefore: 549 + 549 * 12.96 / 100,
      rating: 4.69,
      discountPercentage: 12.96,
      description:
          "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
      gallery: [
        "https://i.dummyjson.com/data/products/1/1.jpg",
        "https://i.dummyjson.com/data/products/1/2.jpg",
        "https://i.dummyjson.com/data/products/1/3.jpg",
        "https://i.dummyjson.com/data/products/1/4.jpg",
        "https://i.dummyjson.com/data/products/1/thumbnail.jpg"
      ],
      stock: 5,
    ),
    const Product(
      id: 2,
      image: "https://i.dummyjson.com/data/products/2/thumbnail.jpg",
      title: "iPhone X",
      brand: "Apple",
      price: 899,
      priceBefore: 899 + 899 * 17.94 / 100,
      rating: 4.44,
      discountPercentage: 17.94,
      description:
          "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
      gallery: [
        "https://i.dummyjson.com/data/products/2/1.jpg",
        "https://i.dummyjson.com/data/products/2/2.jpg",
        "https://i.dummyjson.com/data/products/2/3.jpg",
        "https://i.dummyjson.com/data/products/2/thumbnail.jpg"
      ],
      stock: 4,
    ),
    const Product(
      id: 3,
      image: "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
      title: "Samsung Universe 9",
      brand: "Apple",
      price: 1249,
      priceBefore: 1249 + 1249 * 15.46 / 100,
      rating: 4.09,
      discountPercentage: 15.46,
      description: "Samsung's new variant which goes beyond Galaxy to the Universe",
      gallery: ["https://i.dummyjson.com/data/products/3/1.jpg"],
      stock: 5,
    ),
    const Product(
      id: 4,
      image: "https://i.dummyjson.com/data/products/4/thumbnail.jpg",
      title: "OPPOF19",
      brand: "OPPO",
      price: 280,
      priceBefore: 280 + 280 * 17.91 / 100,
      rating: 4.69,
      discountPercentage: 12.96,
      description: "OPPO F19 is officially announced on April 2021.",
      gallery: [
        "https://i.dummyjson.com/data/products/4/1.jpg",
        "https://i.dummyjson.com/data/products/4/2.jpg",
        "https://i.dummyjson.com/data/products/4/3.jpg",
        "https://i.dummyjson.com/data/products/4/4.jpg",
        "https://i.dummyjson.com/data/products/4/thumbnail.jpg"
      ],
      stock: 5,
    ),
  ];
}
