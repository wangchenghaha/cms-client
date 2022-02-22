class Book {
  int id;
  String name;
  double price;
  String info;

  Book(this.id, this.name, this.price, this.info);

  @override
  String toString(){
    return "id = $id, name = $name, price = $price, info = $info";
  }

}

class CatalogModel {
  static List<Book> books = [
    Book(1000,"Python编程 从入门到实践 第2版", 105.1,
        "零基础学Python编程教程书籍，数据分析、网络爬虫、深度学习技能，畅销经典蟒蛇书升级版，附赠源代码、练习答案、学习视频、学习速查地图读者交流群等资源。"),
    Book(1001,"剪映短视频剪辑从入门到精通：调色+特效+字幕+配音", 69.4,
        "影视剪辑技巧 视频拍摄 视频制作 卡点配音 音频处理 后期特效 滤镜调色 转场 字幕 分屏"),
    Book(1002,"Word/Excel/PPT办公应用从入门到精通", 48.4,
        "办公应用三合一，专门为初学者量身定做。以图解办公实务案例为基础，深入浅出、直观形象地讲解了三大办公软件的基本操作以及繁琐命令快捷化的实用技巧。让你轻松实现高效办公，短时间内轻松成为商务办公能手。"),
    Book(1003,"零基础学Python（全彩版）", 66,
        "Python3全新升级！超20万读者认可的彩色书，从基本概念到完整项目开发，助您快速掌握Python编程。全程视频+完整源码+215道课后题+实物魔卡+海量资源"),
    Book(1004,"数学之美 第三版", 64.7,
        "浪潮之巅、文明之光、硅谷之谜、大学之路、见识作者吴军博士作品，源自谷歌黑板报，根植谷歌方法论，新增区块链、量子通信、人工智能知识，文津图书奖获奖书，数学学科敲门砖"),
    Book(1005,"计算之魂 ", 102.2,
        "数学之美姊妹篇，吴军科技领域重磅新作，李国杰院士郑纬民院士作序推荐，快手宿华拼多多陈磊倾情推荐，名企面试题算法题讲透计算思维"),
    Book(1006,"利用Python进行数据分析", 111.6,
        "Python数据分析经典畅销书全新升级，第1版中文版累计销售100000册 Python pandas创始人亲自执笔，Python语言的核心开发人员鼎立推荐 针对Python 3.6进行全面修订和更新"),
    Book(1007,"深入理解Java虚拟机：JVM高级特性与实践（第3版）", 121,
        "周志明虚拟机新作，第3版新增内容近50%，5个维度全面剖析JVM，大厂面试知识点全覆盖。"),
    Book(1008,"Python编程快速上手 让繁琐工作自动化", 64.7, "Python编程从入门到实践姊妹篇，零基础自学Python教程书籍。"),
    Book(1009,"Android进阶解密", 99, "Android进阶系列第二部，畅销书《Android进阶之光》作者又一力作！"),
  ];

  // 从点击的位置 获取书的信息
  Book getByPosition(int position){
    return books[position];
  }

  Book getById(int id) => books.firstWhere((element) => element.id == id);
  
}