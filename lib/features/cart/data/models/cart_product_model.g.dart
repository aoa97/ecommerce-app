// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartProductModelAdapter extends TypeAdapter<CartProductModel> {
  @override
  final int typeId = 0;

  @override
  CartProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartProductModel(
      productId: fields[0] as String,
      title: fields[1] as String,
      brand: fields[2] as String,
      price: fields[3] as num,
      priceBefore: fields[4] as num?,
      discountPercentage: fields[5] as num?,
      stock: fields[6] as int,
      image: fields[7] as String?,
      description: fields[8] as String,
      qty: fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CartProductModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.brand)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.priceBefore)
      ..writeByte(5)
      ..write(obj.discountPercentage)
      ..writeByte(6)
      ..write(obj.stock)
      ..writeByte(7)
      ..write(obj.image)
      ..writeByte(8)
      ..write(obj.description)
      ..writeByte(9)
      ..write(obj.qty);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
