import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
     //MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  double networth=312321;

  double utilizedTurnOver=108531656;
  final List<ChartData> chartData = [
    ChartData('Utilized', turnOver*Utilized/100, Color(0xFFee991b)),
    ChartData('ThisBill', turnOver*thisbill/100, Color(0xFF0abd76)),
    ChartData('InBidding', turnOver*InBidding/100, Color(0xFFf8d19a)),
  ];
  late List<GDPData> _chartData;
  late List<OurData> _artData;
  late TooltipBehavior _tooltipBehavior;
  static num turnOver= 312321313;
  static num Utilized=34.75;
  static num thisbill=0.28;
  static num InBidding=0.64;
  @override
  void initState() {
    _chartData = getChartData();
    _artData = gartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: Column(
                  children:[ SizedBox(height: 300,),

                    Row(children: [SizedBox(width: 150,),Text('Not Assessed - Buyer - TUNGALOY',
                      style: TextStyle(fontSize: 16,color: Color(0xff404040),fontFamily: 'Lato'),),SizedBox(width:5),Container(height: 32,width: 99.5,decoration:BoxDecoration(color: Color(0xFFfeb358),borderRadius: BorderRadius.circular(16)),
                      child: Padding(padding: EdgeInsets.fromLTRB(25, 6, 25, 4),child: Text('Settlor',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),),)],),
                    SizedBox(height: 5,),Container(
      height: 208.78,
      width: 1160,
      decoration: BoxDecoration(
          color: Color(0xff404040), borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
              child: Container(
                    child: Padding(
            padding: const EdgeInsets.only(top: 25, right: 25,left: 20),
            child:Column(children: [Row(children: [Text(
                                    'Past Settlement History',
                                    style: TextStyle(color: Colors.white, fontSize: 14),
                                  ),SizedBox(width: 35,), Text(
                                      'Entity Type',
                                      style: TextStyle(color: Colors.white, fontSize: 14),
                                    ),SizedBox(width: 100,),Text('Credit Rating',style: TextStyle(color: Colors.white,fontSize: 14),),],

            ),SizedBox(height: 20,),
              Row(children: [Text('₹0.00', style: TextStyle(color: Color(0xFFee991b,), fontSize: 16),),
                  SizedBox(width: 145,), Text('LLP',style: TextStyle(color: Color(0xFFee991b),fontSize: 16),),
              SizedBox(width: 140,), Text('4 1 2 ',style: TextStyle(color:  Color(0xFFee991b),fontSize: 16),),Container(height: 15, width: 15, child: SvgPicture.asset('assets/a.svg',))],
            ),SizedBox(height: 35,),
              Row(children: [ Text('Turnover',style: TextStyle(color: Colors.white,fontSize: 14),),
                  SizedBox(width: 130,), Text('Networth',style: TextStyle(color: Colors.white,fontSize: 14),),
                  SizedBox(width: 110,),Text('Profit After Tax',style: TextStyle(color: Colors.white,fontSize: 14))],
            ),SizedBox(height: 20,),
              Row(children: [ Text('₹312,321,313.00',style: TextStyle(color: Color(0xFFee991b),fontSize: 16)),
                  SizedBox(width: 65,),Text('₹312,321.00',style: TextStyle(color: Color(0xFFee991b),fontSize: 16),),
                  SizedBox(width: 80,), Text('₹312,321.00',style: TextStyle(color: Color(0xFFee991b),fontSize: 16),)],
            )],)
          ))),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5, right: 20),
            child: Column(
              children:[
                  SizedBox(height: 8,),
                  Container(
                  height: 147.38,
                  width: 500,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.topRight,end: Alignment.bottomRight,colors:[ Color(0xFF020502),Color(0xFF2e2e2e)]),
                    borderRadius: BorderRadius.circular(73),
                    color: Color(0xFF020502),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF294981),
                          spreadRadius: 5)
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF036006),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: Color(0xFF0b5c15),
                                      spreadRadius: 5)
                                ],
                              ),
                              child: CircleAvatar(
                                radius: 55,
                                backgroundColor: Color(0xFF294981),
                                child: Stack(children: [
                                  Positioned(
                                      left: 23,
                                      top: 45,
                                      child: Text(
                                        'Turnover',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      )),
                                  Positioned(
                                    left: 0.1,
                                    bottom: 0.1,
                                    right: 0.1,
                                    top: 0.1,
                                    child: SfCircularChart(
                                      palette: [Color(0xFF19f920)],
                                      series: <CircularSeries>[
                                        RadialBarSeries<OurData, String>(
                                            dataSource: _artData,
                                            xValueMapper: (
                                              OurData data,
                                              _,
                                            ) =>
                                                data.continent,
                                            yValueMapper: (OurData data, _) =>
                                                data.gdp,
                                            radius: '90%',
                                            innerRadius: '90%',
                                            //  cornerStyle: CornerStyle.bothCurve,
                                            maximumValue: turnOver.toDouble())
                                      ],
                                    ),
                                  ),
                                  SfCircularChart(
                                      tooltipBehavior: _tooltipBehavior,
                                      series: <CircularSeries>[
                                        DoughnutSeries<ChartData, String>(
                                            dataSource: chartData,
                                            pointColorMapper: (ChartData data, _) =>
                                                data.color,
                                            xValueMapper: (ChartData data, _) =>
                                                data.x,
                                            yValueMapper: (ChartData data, _) =>
                                                data.y,
                                            radius: '70%',
                                            innerRadius: '90%',
                                            startAngle:
                                                361, // Starting angle of doughnut
                                            endAngle: 125)
                                      ]),
                                ]),
                              ))),
                      Expanded(
                        child: Container(
                            child: Stack(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 4.3,
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '34.75%',
                                    style: TextStyle(color: Color(0xFFee991b)),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    'Utilized',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    '34754...%',
                                    style: TextStyle(color: Color(0xFFee991b)),
                                  ),
                                ]),
                                Positioned(
                                  top: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10),
                                    child: Divider(
                                      color: Color(0xFF294981),
                                      thickness: 3,
                                    ),
                                  ),
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '0.28%',
                                    style: TextStyle(color: Color(0xFFf1d888)),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    'This Bill',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    '284.61%',
                                    style: TextStyle(color: Color(0xFFf1d888)),
                                  ),
                                ]),
                                Positioned(
                                  top: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10),
                                    child: Divider(
                                      color: Color(0xFF294981),
                                      thickness: 3,
                                    ),
                                  ),
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '0.64%',
                                    style: TextStyle(color: Color(0xFF0abd76)),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    'In-Bidding',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    '640.37%',
                                    style: TextStyle(color: Color(0xFF0abd76)),
                                  ),
                                ]),
                                Positioned(
                                  top: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10),
                                    child: Divider(
                                      color: Color(0xFF294981),
                                      thickness: 3,
                                    ),
                                  ),
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '35.67%',
                                    style: TextStyle(color: Color(0xFF19f920)),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    '35679...%',
                                    style: TextStyle(color: Color(0xFFe95050)),
                                  ),
                                ]),
                                Positioned(
                                  //top: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10),
                                    child: Divider(
                                      color: Color(0xFF294981),
                                      thickness: 3,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Latest Year 2020-2021',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'View Full Details',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                    Expanded(
                                        child:Container(
                                            height: 15,
                                            width: 15,
                                            child: SvgPicture.asset('assets/a.svg',)))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF036006),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Color(0xFF0b5c15),
                                  spreadRadius: 5)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 55,
                            backgroundColor: Color(0xFF294981),
                            child: Stack(children: [
                              Positioned(
                                  left: 28,
                                  top: 45,
                                  child: Text(
                                    'Networth',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  )),
                              Positioned(
                                left: 0.1,
                                bottom: 0.1,
                                right: 0.1,
                                top: 0.1,
                                child: SfCircularChart(
                                  palette: [Color(0xFFe95050)],
                                  series: <CircularSeries>[
                                    RadialBarSeries<OurData, String>(
                                        dataSource: _artData,
                                        xValueMapper: (
                                          OurData data,
                                          _,
                                        ) =>
                                            data.continent,
                                        yValueMapper: (OurData data, _) => data.gdp,
                                        radius: '90%',
                                        innerRadius: '90%',
                                        maximumValue: networth)
                                  ],
                                ),
                              ),
                              SfCircularChart(
                                  tooltipBehavior: _tooltipBehavior,
                                  series: <CircularSeries>[
                                    DoughnutSeries<ChartData, String>(
                                      dataSource: chartData,
                                      pointColorMapper: (ChartData data, _) =>
                                          data.color,
                                      xValueMapper: (ChartData data, _) => data.x,
                                      yValueMapper: (ChartData data, _) => data.y,
                                      radius: '70%',
                                      innerRadius: '90%',
                                    )
                                  ]),
                            ]),
                          ),
                        ),
                      )
                    ],
                  ),
              ),SizedBox(height: 5,),
                  Container(
                    height: 35,
                    width: 370,
                    decoration: BoxDecoration(color: Color(0xFF000000),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      border: Border.all(
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25,7,25,2),
                      child: Row(children: [Text
                        ('Amount Settled on Platform',style: TextStyle(color: Colors.white,fontSize: 12),),
                        Spacer(),
                        Container(
                          height: 60,
                          width: 80,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xFF323232),
                                Color(0xFF4d4d4d),
                              ],),
                            color: Color(0xFF4d4d4d),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40),
                            ),
                            border: Border.all(
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Center(
                            child:  Text(
                              '₹0.00',
                              style:
                              TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ],),
                    )
                  ),
  ]),
          )
        ],
      ),
    ),]))));
  }
}
List<GDPData> getChartData() {
  final List<GDPData> chartData = [
    GDPData('Utilized', 108531656, Color(0xFF19f920)),
    GDPData('ThisBill', 874499, Colors.deepPurpleAccent),
    GDPData('InBidding', 559679, Colors.deepPurpleAccent),
  ];
  return chartData;
}

List<OurData> gartData() {
  final List<OurData> artData = [
    OurData('Total', 109312459, Color(0xFF19f920)),
  ];
  return artData;
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}

class OurData {
  OurData(this.continent, this.gdp, this.color);
  final String continent;
  final int gdp;
  Color color;
}

class GDPData {
  GDPData(this.continent, this.gdp, this.color);
  final String continent;
  final int gdp;
  Color color;
}
//
//
//
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   final List<ChartData> chartData = [
//     ChartData('Utilized', 108531656, Color(0xFFee991b)),
//     ChartData('ThisBill', 874499, Color(0xFF0abd76)),
//     ChartData('InBidding', 559679, Color(0xFFf8d19a)),
//   ];
//   late List<GDPData> _chartData;
//   late List<OurData> _artData;
//   late TooltipBehavior _tooltipBehavior;
//   @override
//   void initState() {
//     _chartData = getChartData();
//     _artData = gartData();
//     _tooltipBehavior = TooltipBehavior(enable: true);
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Center(
//         child: Container(
//           height: 260,
//           width: 1100,
//           child: Row(
//             children: [Container(height: 147,
//               width: 500,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child:
//                 Container(
//                   height: 300,
//                   width: 1000,
//     decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(160),
//               color: Color(0xFF020502),
//     boxShadow: [
//     BoxShadow(
//     color: Color(0xFF294981),
//     //blurRadius: 2.0, // soften the shadow
//               spreadRadius: 15
//     )
//     ],
//     ),
//                   child: Stack(children: [Positioned(
//                     left: 10,
//                     right:687,
//                     bottom: 28,
//                     top: 22,
//                     child:
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         shape: BoxShape.circle,
//                        boxShadow: [BoxShadow(blurRadius: 10,
// color: Color(0xFF036006), spreadRadius: 5)],
//                       ),
//                       child:
//                     CircleAvatar(backgroundColor: Color(0xFF192d50),
//                         child:Padding(
//                           padding: const EdgeInsets.all(2),
//                           child: SfCircularChart(
//                               tooltipBehavior: _tooltipBehavior,
//                               series: <CircularSeries>[
//                                 DoughnutSeries<ChartData, String>(
//                                     dataSource: chartData,
//                                     pointColorMapper:(ChartData data,  _) => data.color,
//                                     xValueMapper: (ChartData data, _) => data.x,
//                                     yValueMapper: (ChartData data, _) => data.y,
//                                     radius: '70%',
//                                     innerRadius: '90%',
//                                     startAngle: 361, // Starting angle of doughnut
//                                     endAngle: 125
//                                 )
//                               ]),
//                         )),),),
//                     Positioned(
//                       left: 450,
//                       //right:260,
//                       bottom: 33,
//                       top: 75,
//                       child: Text(
//                         'Utilized',
//                         style: TextStyle(fontSize: 18,color: Colors.white),
//                       ),
//                     ),
//                     Positioned(
//                       left: 350,
//
//                       right:250,
//                       bottom: 33,
//                       top: 75,
//                       child: Text(
//                         '34.75%',
//                         style: TextStyle(fontSize: 22,color: Color(0xFFee991b)),
//                       ),
//                     ),
//                     Positioned(
//                       left: 550,
//                      // right:250,
//                       bottom: 33,
//                       top: 75,
//                       child: Text(
//                         '3475...%',
//                         style: TextStyle(fontSize: 22,color: Color(0xFFee991b)),
//                       ),
//                     ),
//                   Positioned(
//                     left: 350,
//                      right:370,
//                     bottom: 180,
//                     //top: 25,
//                     child:Divider(thickness: 2,
//                       color: Color(0xFF294981),
//                     ),),
//                     Positioned(
//                       left: 450,
//                       //right:260,
//                       bottom: 33,
//                       top: 125,
//                       child: Text(
//                         'This Bill',
//                         style: TextStyle(fontSize: 18,color: Colors.white),
//                       ),
//                     ),
//                     Positioned(
//                       left: 350,
//                       right:250,
//                       bottom: 33,
//                       top: 125,
//                       child: Text(
//                         '0.28%',
//                         style: TextStyle(fontSize: 22,color: Color(0xFFf8d19a)),
//                       ),
//                     ),
//                     Positioned(
//                       left: 550,
//                       // right:250,
//                       bottom: 33,
//                       top: 125,
//                       child: Text(
//                         '284.61%',
//                         style: TextStyle(fontSize: 22,color: Color(0xFFf8d19a)),
//                       ),
//                     ),
//                     Positioned(
//                       left: 350,
//                       right:370,
//                       bottom: 180,
//                       top: 155,
//                       child:Divider(thickness: 2,
//                         color: Color(0xFF294981),
//                       ),),
//                     Positioned(
//                       left: 450,
//                       //right:260,
//                       bottom: 33,
//                       top: 165,
//                       child: Text(
//                         'In Bidding',
//                         style: TextStyle(fontSize: 18,color: Colors.white),
//                       ),
//                     ),
//                     Positioned(
//                       left: 350,
//                       right:250,
//                       bottom: 33,
//                       top: 165,
//                       child: Text(
//                         '0.64%',
//                         style: TextStyle(fontSize: 22,color: Color(0xFF0abd76)),
//                       ),
//                     ),
//                     Positioned(
//                       left: 550,
//                       // right:250,
//                       bottom: 33,
//                       top: 165,
//                       child: Text(
//                         '640.37%',
//                         style: TextStyle(fontSize: 22,color: Color(0xFF0abd76)),
//                       ),
//                     ),
//                     Positioned(
//                       left: 350,
//                       right:370,
//                       bottom: 180,
//                       top: 195,
//                       child:Divider(thickness: 2,
//                         color: Color(0xFF294981),
//                       ),),
//                     Positioned(
//                       left: 465,
//                       //right:260,
//                       bottom: 33,
//                       top: 205,
//                       child: Text(
//                         'Total',
//                         style: TextStyle(fontSize: 18,color: Colors.white),
//                       ),
//                     ),
//                     Positioned(
//                       left: 350,
//                       right:250,
//                       bottom: 33,
//                       top: 205,
//                       child: Text(
//                         '35.67%',
//                         style: TextStyle(fontSize: 22,color: Color(0xFF19f920)),
//                       ),
//                     ),
//                     Positioned(
//                       left: 550,
//                       // right:250,
//                       bottom: 33,
//                       top: 205,
//                       child: Text(
//                         '35679...%',
//                         style: TextStyle(fontSize: 22,color: Color(0xFFe95050)),
//                       ),
//                     ),
//                     Positioned(
//                       left: 350,
//                       right:370,
//                       bottom: 180,
//                       top: 235,
//                       child:Divider(thickness: 2,
//                         color: Color(0xFF294981),
//                       ),),
//                     Positioned(
//                       left: 105,
//                       right:450,
//                       bottom: 3,
//                       top: 125,
//                       child: Text(
//                         'Turnover',
//                         style: TextStyle(fontSize: 28,color: Colors.white),
//                       ),
//                     ),
//                     Positioned(
//
//                      //right:18,
//                       right:690,
//                       bottom: 8,
//                       top: 4,
//                       child: Container(
//                         // child: Padding(
//                         //   padding: const EdgeInsets.all(10.0),
//                           child: SfCircularChart(
//                             //title: ChartTitle(text: 'TurnOver'),
//                             palette: [Color(0xFF19f920)],
//                             series: <CircularSeries>[
//                               RadialBarSeries<OurData, String>(
//                                   dataSource: _artData,
//                                   xValueMapper: (
//                                       OurData data,
//                                       _,
//                                       ) =>
//                                   data.continent,
//                                   yValueMapper: (OurData data, _) => data.gdp,
//                                   // dataLabelSettings: DataLabelSettings(isVisible: true),
//                                   enableTooltip: true,
//                                    radius: '70%',
//                                   innerRadius: '90%',
//                                   //  cornerStyle: CornerStyle.bothCurve,
//                                   maximumValue: 312321313)
//                             ],
//                           ),
//                         ),
//                       ),
//                     Positioned(
//                       left: 700,
//                       right:15,
//                       bottom: 25,
//                       top: 25,
//                       child:
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           shape: BoxShape.circle,
//                           boxShadow: [BoxShadow(blurRadius: 10, color: Color(0xFF036006), spreadRadius: 5)],
//                         ),
//                         child:
//                         CircleAvatar(backgroundColor: Color(0xFF192d50),
//                             child:Padding(
//                               padding: const EdgeInsets.all(2),
//                               child: SfCircularChart(
//                                   tooltipBehavior: _tooltipBehavior,
//                                   series: <CircularSeries>[
//                                     DoughnutSeries<ChartData, String>(
//                                         dataSource: chartData,
//                                         pointColorMapper:(ChartData data,  _) => data.color,
//                                         xValueMapper: (ChartData data, _) => data.x,
//                                         yValueMapper: (ChartData data, _) => data.y,
//                                         radius: '70%',
//                                         innerRadius: '90%',
//                                     )
//                                   ]),
//                             )),),),
//                     Positioned(
//                       left: 785,
//                       right:55,
//                       bottom: 3,
//                       top: 125,
//                       child: Text(
//                         'NetWorth',
//                         style: TextStyle(fontSize: 28,color: Colors.white),
//                       ),
//                     ),
//                     Positioned(
//                       left:703,
//                       right:18,
//                       bottom: 6,
//                       top: 6,
//                       child: Container(
//                         // child: Padding(
//                         //   padding: const EdgeInsets.all(10.0),
//                         child: SfCircularChart(
//                           //title: ChartTitle(text: 'TurnOver'),
//                           palette: [Color(0xFFe95050)],
//                           series: <CircularSeries>[
//                             RadialBarSeries<OurData, String>(
//                                 dataSource: _artData,
//                                 xValueMapper: (
//                                     OurData data,
//                                     _,
//                                     ) =>
//                                 data.continent,
//                                 yValueMapper: (OurData data, _) => data.gdp,
//                                 // dataLabelSettings: DataLabelSettings(isVisible: true),
//                                 enableTooltip: true,
//                                 radius: '70%',
//                                 innerRadius: '90%',
//                                 //  cornerStyle: CornerStyle.bothCurve,
//                                 maximumValue: 109312459)
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],),
//    ),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     ));
//   }
//   List<GDPData> getChartData() {
//     final List<GDPData> chartData = [
//       GDPData(
//         'Utilized',
//         108531656,Color(0xFF19f920)
//       ),
//       GDPData('ThisBill', 874499, Colors.deepPurpleAccent),
//       GDPData('InBidding', 559679, Colors.deepPurpleAccent),
//      // GDPData('Total', 312321, Colors.lightGreenAccent),
//     ];
//     return chartData;
//   }
// }
// List<OurData> gartData() {
//   final List<OurData> artData = [
//     OurData('Total',109312459 , Color(0xFF19f920)),
//   ];
//   return artData;
// }
// class ChartData {
//   ChartData(this.x, this.y, this.color);
//   final String x;
//   final double y;
//   final Color color;
// }
// class OurData {
//   OurData(this.continent, this.gdp, this.color);
//   final String continent;
//   final int gdp;
//   Color color;
// }
// class GDPData {
//   GDPData(this.continent, this.gdp, this.color);
//   final String continent;
//   final int gdp;
//   Color color;
// }
