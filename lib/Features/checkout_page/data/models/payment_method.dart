import 'dart:convert';

class PaymentMethod {
  final String cardNumber;
  final String expiryDate;
  final String cardHolderName;
  final String cvvCode;

  PaymentMethod({
    required this.cardNumber,
    required this.expiryDate,
    required this.cardHolderName,
    required this.cvvCode,
  });

  PaymentMethod copyWith({
    String? cardNumber,
    String? expiryDate,
    String? cardHolderName,
    String? cvvCode,
  }) {
    return PaymentMethod(
      cardNumber: cardNumber ?? this.cardNumber,
      expiryDate: expiryDate ?? this.expiryDate,
      cardHolderName: cardHolderName ?? this.cardHolderName,
      cvvCode: cvvCode ?? this.cvvCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cardNumber': cardNumber,
      'expiryDate': expiryDate,
      'cardHolderName': cardHolderName,
      'cvvCode': cvvCode,
    };
  }

  factory PaymentMethod.fromMap(Map<String, dynamic> map) {
    return PaymentMethod(
      cardNumber: map['cardNumber'] ?? '',
      expiryDate: map['expiryDate'] ?? '',
      cardHolderName: map['cardHolderName'] ?? '',
      cvvCode: map['cvvCode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentMethod.fromJson(String source) => PaymentMethod.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentMethod(cardNumber: $cardNumber, expiryDate: $expiryDate, cardHolderName: $cardHolderName, cvvCode: $cvvCode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PaymentMethod &&
      other.cardNumber == cardNumber &&
      other.expiryDate == expiryDate &&
      other.cardHolderName == cardHolderName &&
      other.cvvCode == cvvCode;
  }

  @override
  int get hashCode {
    return cardNumber.hashCode ^
      expiryDate.hashCode ^
      cardHolderName.hashCode ^
      cvvCode.hashCode;
  }
}
