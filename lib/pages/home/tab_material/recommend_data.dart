class RecommendItem {
  final String title ;
  final String subTitle ;
  final String imgUrl ;
  final String navigatorUrl ;

  const RecommendItem(this.title, this.subTitle, this.imgUrl, this.navigatorUrl);

}


const List<RecommendItem> recommendData=[
  RecommendItem(
    '家住回龙观','归属的感觉', 'static/images/home_index_recommend_1.png', 'login'),
  
  RecommendItem(
    '宜居四五环', '大都市生活','static/images/home_index_recommend_2.png', 'login'),

  RecommendItem(
    '喧嚣三里屯', '繁华的背后','static/images/home_index_recommend_3.png', 'login'),
  RecommendItem(
     '比邻十号线','地铁心连心', 'static/images/home_index_recommend_4.png', 'login'),
];
