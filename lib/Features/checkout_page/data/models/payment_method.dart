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
}
