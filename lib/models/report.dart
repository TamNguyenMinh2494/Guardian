class Report {
  String id;
  String? address;
  bool? flag = false;
  int? pos = 0; // Proof of Stake

  Report(
      {required this.id,
      required this.address,
      required this.flag,
      required this.pos});
  factory Report.fromMap(Map<String, dynamic> data) {
    return Report(
        id: data['id'].toString(),
        address: data['address'].toString(),
        flag: data['flag'],
        pos: int.parse(data['pos'].toString()));
  }
  Map<String, dynamic> toMap() {
    return {"id": id, "address": address, "flag": flag, "pos": pos};
  }
}
