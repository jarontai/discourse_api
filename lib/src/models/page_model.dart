class PageModel<T> {
  final List<T> data;
  final int page;
  final int pageSize;

  const PageModel({this.data = const [], this.page = 0, this.pageSize = 10});

  int get size => data.length;

  bool get hasNext => size >= pageSize;

  PageModel<T> copyWith({
    List<T>? data,
    int? page,
  }) {
    return PageModel<T>(
      data: data ?? this.data,
      page: page ?? this.page,
    );
  }
}
