void main() {
  _numType();
  _stringType();
  _boolType();
}

/// 数字类型
_numType() {
  num num1 = -1.0; // num是数字类型的子类，由两个子类 int 和 double
  num num2 = 2;
  int test = 10;
  double test2 = 20.0;
  print("num:$num1 num:$num2 int:$test double:$test2");
  print(num1.abs());
  print(num1.toInt());
  print(num1.toDouble());
}

/// 字符串类型
_stringType() {
  String str1 = "xiaomi", str2 = 'apple'; // 字符串的定义，双引号和单引号都可
  String str3 = 'str1:$str1 str2:$str2'; // 字符串的拼接
  String str5 = "常用数据类型，请看控制台输出";
  String macAddress = "00:1A:2B:3C:4D:5E";
  String sensorData = "38.5,120,85";
  List<String> values = sensorData.split(',');
  String cleanMac = macAddress.replaceAll(':', ' ');
  print(str3);
  // 字符串常用方法
  print(str5.substring(1, 5)); // 字符串截取
  print(str5.indexOf("类型")); // 获取指定字符串的位置
  print(str3.startsWith("str")); // 判断字符串前缀
  print(str3.contains('xiaomi')); // 判断字符串是否包含
  print(cleanMac); // 分隔字符串
  print("温度: ${values[0]}"); // 38.5
  print("心率: ${values[1]}"); // 120
}

/// bool 和 集合类型
_boolType() {
  bool success = true, fail = false;
  print(success);
  print(fail);
  print(success || fail);
  print(success && fail);
}
