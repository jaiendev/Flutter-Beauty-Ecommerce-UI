enum ApiMethod {
  get,
  post,
  put,
  patch,
  delete,
}

extension ApiMethodDescription on ApiMethod {
  String get methodName => name.toUpperCase();
}
