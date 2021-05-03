class Pager<T> {
  final List<T> data;
  final int page;
  final int pageSize;

  Pager({this.data = const [], this.page = 0, this.pageSize = 10});

  int get size => data.length;

  bool get hasNext => size >= pageSize;

  Pager<T> copyWith({
    List<T>? data,
    int? page,
    int? pageSize,
  }) {
    return Pager<T>(
      data: data ?? this.data,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
    );
  }
}
