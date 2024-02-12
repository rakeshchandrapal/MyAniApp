import 'package:built_value/serializer.dart';

class DateSerializer implements PrimitiveSerializer<Map<dynamic, dynamic>> {
  @override
  Map<dynamic, dynamic> deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    assert(serialized is int,
        "DateSerializer expected 'int' but got ${serialized.runtimeType}");
    return serialized as Map;
  }

  @override
  Object serialize(
    Serializers serializers,
    Map<dynamic, dynamic> date, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      date;

  @override
  Iterable<Type> get types => [Map<dynamic, dynamic>];

  @override
  String get wireName => "Json";
}
