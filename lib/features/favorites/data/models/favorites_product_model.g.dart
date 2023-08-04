// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoritesProductModelAdapter extends TypeAdapter<FavoritesProductModel> {
  @override
  final int typeId = 1;

  @override
  FavoritesProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoritesProductModel(
      productId: fields[0] as String,
      title: fields[1] as String,
      brand: fields[2] as String,
      price: fields[3] as num,
      priceBefore: fields[4] as num?,
      discountPercentage: fields[5] as num?,
      image: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, FavoritesProductModel obj) {
    writer
      ..writeByte(7)
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
      ..writeByte(7)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
