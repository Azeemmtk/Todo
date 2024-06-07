List<Map> Data = [];
List<Map> Trueind = [];

void adddata({required String a, required String b}) {
  Map<String, dynamic> map = {'title': a, 'subtitle': b, 'iscompete': false};
  Data.add(map);
}

void editdata(
    {required String title, required String subtitle, required int indux}) {
  print('$title,$subtitle,$indux');
  Data[indux] = {'title': title, 'subtitle': subtitle};
}

void deletedata({required int indux}) {
  Data.removeAt(indux);
}
