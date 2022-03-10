import 'package:cms/router.dart';
import 'package:cms/widgets/common_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PowerAttorneyPage extends StatelessWidget {
  const PowerAttorneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('协议'),
        elevation: 1,
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '肖像使用授权书',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText('Authorization of the Portrait Usages'),
                    CommonText('肖像授权人：【  王某某  】'),
                    CommonText('有效证件号： 110110199509168866'),
                    CommonText(
                        'Authorizer of the Portrait: 【 110110199509168866 】'),
                    CommonText('Effective ID No.:'),
                    CommonText(
                        '被授权人：【绫致时装（天津）有限公司】及其关联企业（包括中国境内及境外的已经成立及未来成立的关联企业）'),
                    CommonText(
                        'Authorized to: 【Bestseller Fashion Group (Tianjin) Co. LTD】and its affiliated enterprises (including the already established and future affiliated companies within and outside China)'),
                    CommonText('肖像授权人在此不可撤销地授予被授权人下述权利：'),
                    CommonText(
                        'The authorizer of the portrait hereby irrevocably grants the permission of the following rights:'),
                    CommonText('2.使用年限：自被授权人首次使用起两年。'),
                    CommonText('Years of use: 2 years since the first use.'),
                    CommonText(
                        ' 3.使用范围：被授权人旗下所有相关品牌服装的宣传及销售平台。但不包括任何户外广告的用途(如户外灯箱,路牌,楼体等。在上述使用范围内，被授权人有权转授权第三方使用，但应监督被授权第三方不超过使用范围使用授权人肖像。'),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              width: MediaQuery.of(context).size.width,
              height: 110,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  // color: Color.fromRGBO(157, 119, 255, 1),
                  color: Colors.black12,
                ),
              )),
          Positioned(
              // width: MediaQuery.of(context).size.width - 100,
              height: 40,
              bottom: 50,
              left: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.signature);
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(157, 119, 255, 1),
                  ),
                  child: Text(
                    '签名',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

                // alignment: Alignment.center,
                // height: 48.0,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(20),
                //   color: const Color(0xFF8684FF),
                // ),
                // padding: EdgeInsets.fromLTRB(0, 10, 0, 10),

                // child: Container(
                //   // alignment: Alignment.center,
                //   width: MediaQuery.of(context).size.width - 40,
                //   // height: 30,
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(24),
                //     color: Color.fromRGBO(157, 119, 255, 1),
                //   ),
                //   child: Text(
                //     '签名',
                //     style: TextStyle(color: Colors.white, fontSize: 18),
                //   ),
                // ),