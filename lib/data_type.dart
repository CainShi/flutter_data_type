void main() {
  _numType();
  _stringType();
  _boolType();
  _listType();
  _mapType();
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

/// List集合类型
_listType() {
  print("---List type---");

  /// 集合的初始化方式
  /// 使用[]初始化
  List list = [1, 2, 3, "xioami"]; // 初始化时添加元素，集合为泛型
  print(list);
  List<int> list2 = [];
  List list3 = [];
  list3.add("mimimi"); // 通过add方法添加元素
  list3.addAll(list);
  print(list3);
  List list4 = List.generate(4, (index) => index * 2);
  print(list4);

  /// 遍历集合的方法
  for (var ele in list4) {
    print(ele);
  }

  list4.forEach((val) {
    print(val);
  });

  list4.removeAt(0);
  print(list4);
  list4.insert(0, "StopShock");
  print(list4);
  print(list4.indexOf(2));
  List list5 = list4.sublist(2, 3);
  print(list5);
}

/// map集合类型
_mapType() {
  ///  map的初始化
  /// map初始化使用{}
  Map names = {"小明": "xiaoming", "小红": "xiaohong"};
  print(names);
  Map ages = {};
  ages['xiaoming'] = 20;
  ages['xiaohong'] = 18;
  print(ages);

  /// Map的遍历
  ages.forEach((key, value) {
    print("key: $key, value: $value");
  });

  /// 通过遍历一个map来生成另外一个map
  Map ages2 = ages.map((key, value) {
    return MapEntry(key, value + 1);
  });
  print(ages2);

  for (var key in ages.keys) {
    print("key: $key, value: ${ages[key]}");
  }
  Map<String, int> ages3 = {};
  ages3['xiaoli'] = 100;
}
