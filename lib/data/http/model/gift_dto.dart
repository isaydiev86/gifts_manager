import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'gift_dto.g.dart';

@JsonSerializable()
class GiftDto extends Equatable {
  final String id;
  final String name;
  final double? price;
  final String? link;

  const GiftDto({
    required this.id,
    required this.name,
    required this.price,
    required this.link,
  });

  factory GiftDto.fromJson(final Map<String, dynamic> json) =>
      _$GiftDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GiftDtoToJson(this);

  @override
  List<Object?> get props => [id, name, price, link];
}
