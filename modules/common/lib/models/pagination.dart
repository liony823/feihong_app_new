class Pagination<T> {
  final int total;
  final List<T> list;

  Pagination({
    required this.total,
    required this.list,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      total: json['total'],
      list: json['list'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'list': list,
    };
  }
}
