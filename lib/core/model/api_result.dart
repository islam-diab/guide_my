class ApiResult<T> {
  final T value;
  final bool isError;

  ApiResult({required this.value, required this.isError});
}
 