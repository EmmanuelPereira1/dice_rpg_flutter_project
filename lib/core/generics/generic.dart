class Generic<T, E> {
  T? data;
  E? error;
  Status status;

  bool get hasError => error != null;

  Generic.loading({this.data, this.error, this.status = Status.loading});
  Generic.success({this.data, this.error, this.status = Status.success});
  Generic.failed({this.data, this.error, this.status = Status.failed});
}

enum Status { loading, success, failed }