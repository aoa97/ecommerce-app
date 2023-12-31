import 'package:ecommerce/core/data/models/product_item_model.dart';

class DummyData {
  static final List<ProductItemModel> products = [
    const ProductItemModel(
      id: "iphone-11",
      image: "https://m.media-amazon.com/images/I/512YXWpYS0L.__AC_SX300_SY300_QL70_ML2_.jpg",
      title: "IPhone 11",
      brand: "Apple",
      price: 24500,
      priceBefore: 24500 + 24500 * 12.96 / 100,
      discountPercentage: 12.96,
      rating: 4.69,
      // description: "Apple iPhone 11 with Facetime - 128GB, 4G LTE, Black, Middle East Version",
      // gallery: [
      //   "https://m.media-amazon.com/images/I/512YXWpYS0L._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/51xOCPHBJ7L._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/51cC6vAcxiL._AC_SX679_.jpg",
      // ],
      stock: 2,
    ),
    const ProductItemModel(
      id: "iphone-12",
      image: "https://m.media-amazon.com/images/I/71fVoqRC0wL._AC_UL800_FMwebp_QL65_.jpg",
      title: "IPhone 12",
      brand: "Apple",
      price: 28000,
      priceBefore: 28000 + 28000 * 12.96 / 100,
      discountPercentage: 12.96,
      rating: 4.69,
      // description: "Apple iPhone 12 128GB 4 GB RAM, Black, Global Version",
      // gallery: [
      //   "https://m.media-amazon.com/images/I/71fVoqRC0wL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81MNOFTUE4L._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81WvugDD0sL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81cB4-9KczL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81oAJagLv+L._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/71aPXlN2vSL._AC_SX679_.jpg"
      // ],
      stock: 1,
    ),
    const ProductItemModel(
      id: "iphone-13",
      image: "https://m.media-amazon.com/images/I/71xb2xkN5qL._AC_UL800_FMwebp_QL65_.jpg",
      title: "IPhone 13",
      brand: "Apple",
      price: 30220,
      rating: 4.69,
      // description: "New Apple iPhone 13 with FaceTime (128GB) - Blue, Global Version",
      // gallery: [
      //   "https://m.media-amazon.com/images/I/71xb2xkN5qL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/61d8XHJuE2L._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81junVbiuyL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/817WqZsxjWL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81D+jJBOfpL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/61jcXSsEXzL._AC_SX679_.jpg"
      // ],
      stock: 6, discountPercentage: null, priceBefore: null,
    ),
    const ProductItemModel(
      id: "iphone-14",
      image: "https://m.media-amazon.com/images/I/618Bb+QzCmL._AC_UL800_FMwebp_QL65_.jpg",
      title: "IPhone 14",
      brand: "Apple",
      price: 34591,
      rating: 4.69,
      // description: "Apple iPhone 14 (128 GB) - Starlight, Global Version",
      // gallery: [
      //   "https://m.media-amazon.com/images/I/618Bb+QzCmL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/512Wg9SvQsL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/718muFN+T+L._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/71RjOCBtxQL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81EI7DNcqhL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/71l6S7oHGjL._AC_SX679_.jpg"
      // ],
      stock: 0, discountPercentage: null, priceBefore: null,
    ),
    const ProductItemModel(
      id: "macbook-m1-pro",
      image: "https://m.media-amazon.com/images/I/61UY5LzzA0L._AC_UL800_QL65_.jpg",
      title: "Macbook M1 Pro",
      brand: "Apple",
      price: 79000,
      priceBefore: 79000 + 79000 * 12.96 / 100,
      discountPercentage: 12.96,
      rating: 4.5,
      // description: "14-inchMacBookPro:AppleM1Prochipwith8‑coreCPUand14‑coreGPU,16GB,512GBSSD-SpaceGrey",
      // gallery: [
      //   "https://m.media-amazon.com/images/I/61UY5LzzA0L._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/71pp+Y-SXCL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/61VSOw9p91L._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81vKGrvMmCL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81vCJ0C-unL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/61Gr3GntWiL._AC_SX679_.jpg"
      // ],
      stock: 3,
    ),
    const ProductItemModel(
      id: "macbook-air",
      image: "https://m.media-amazon.com/images/I/710-zIN6mML._AC_UL800_QL65_.jpg",
      title: "Macbook Air",
      brand: "Apple",
      price: 68000,
      priceBefore: 68000 + 68000 * 12.96 / 100,
      discountPercentage: 12.96,
      rating: 4.0,
      // description: "13-inch MacBook Air: Apple M2 chip with 8-core CPU and 10-core GPU, 512GB - Silver",
      // gallery: [
      //   "https://m.media-amazon.com/images/I/710-zIN6mML._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/71EyYV+wJ2L._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/61l2gEhTBbL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81GgLymul-L._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81SjldAN4ZL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/61WiJ6Y4beL._AC_SX679_.jpg"
      // ],
      stock: 6,
    ),
    const ProductItemModel(
      id: "macbook-air-10",
      image: "https://m.media-amazon.com/images/I/71uJwr1IrZL._AC_UL800_QL65_.jpg",
      title: "Macbook Air 10",
      brand: "Apple",
      price: 67500,
      rating: 4.6,
      // description: "13-inch MacBook Air: Apple M2 chip with 8-core CPU and 10-core GPU, 512GB - Midnight",
      // gallery: [
      //   "https://m.media-amazon.com/images/I/71uJwr1IrZL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/71n5FX4KMmL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/61l2gEhTBbL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81N4NAlrDPL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/81SjldAN4ZL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/61xYoh15msL._AC_SX679_.jpg"
      // ],
      stock: 1, discountPercentage: null, priceBefore: null,
    ),
    const ProductItemModel(
      id: "macbook-m1-pro",
      image: "https://m.media-amazon.com/images/I/71PWU942AIL._AC_UL800_QL65_.jpg",
      title: "Macbook M1 Pro",
      brand: "Apple",
      price: 66000,
      rating: 4.4,
      // description: "13-inch MacBook Air: Apple M2 chip with 8-core CPU and 10-core GPU, 512GB - Space Grey",
      // gallery: [
      //   "https://m.media-amazon.com/images/I/71PWU942AIL._AC_SX679_.jpg",
      //   "https://m.media-amazon.com/images/I/61EX--SjBtL._AC_SX679_.jpg",
      // ],
      stock: 3,
      discountPercentage: null,
      priceBefore: null,
    ),
  ];
}
