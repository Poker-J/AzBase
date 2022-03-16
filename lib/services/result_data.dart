///返回值基类
class ResultData {
  dynamic data;
  bool isSuccess;
  int code;
  dynamic headers;

  ResultData(this.data, this.isSuccess, this.code, {this.headers});

  @override
  String toString() {
    return super.toString();
  }
}
