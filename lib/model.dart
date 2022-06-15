class KFatura {
  final String adSoyad;
  final String kartNo;
  final String masaNo;
  final String telNo;

  KFatura({
    required this.adSoyad,
    required this.kartNo,
    required this.masaNo,
    required this.telNo,
  });

  Map<String, dynamic> toJson() => {
    'adSoyad': adSoyad,
    'kartNo': kartNo,
    'masaNo': masaNo,
    'telNo': telNo,
  };

  static KFatura fromJson(Map<String, dynamic> json) => KFatura(
      adSoyad: json['adSoyad'],
      kartNo: json['kartNo'],
      masaNo: json['masaNo'],
      telNo: json['telNo']
  );
}