class FeeCardModel {
  FeeCardModel({
    this.title,
    this.date,
    this.totalFee,
    this.extraFee,
    this.discount,
    this.totalPaid,
    this.status,
    this.schoolFee,
  });
  final String? title;
  final String? date;
  final String? totalFee;
  final String? schoolFee;
  final String? extraFee;
  final String? discount;
  final String? totalPaid;
  final String? status;
}
