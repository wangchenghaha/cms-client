
// 待办列表数据类
class DataListItemData {
  String productStepNameCn = '';
  String productStepNameEn = '';
  String productContentProductionStep = '';
  int number = 0;
  DataListItemData(
      this.productStepNameCn,
        this.productStepNameEn,
        this.productContentProductionStep,
        this.number);

  DataListItemData.fromJson(Map<String, dynamic> json) {
    print(json);
    productStepNameCn = json['productStepNameCn'];
    productStepNameEn = json['productStepNameEn'];
    productContentProductionStep = json['productContentProductionStep'];
    number = json['number'];
  }
}
