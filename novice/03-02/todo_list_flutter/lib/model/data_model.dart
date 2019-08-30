
class Data{
  String tugas;
  bool isChecked;

  Data(this.tugas, this.isChecked);

  Data.fromJson(Map<String, dynamic> json)
    : tugas = json['tugas'],
      isChecked = json['checked'];

  Map<String, dynamic> toJson() {
    return {
      'tugas': tugas,
      'checked': isChecked
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$tugas: $isChecked";
  }
}