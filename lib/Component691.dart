import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Component691 extends StatelessWidget {
  Component691({
    Key ?key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.948, -0.974),
              end: Alignment(0.912, 0.948),
              colors: [const Color(0xffffffff), const Color(0xffeaeaea)],
              stops: [0.0, 1.0],
            ),
            borderRadius: BorderRadius.circular(22.0),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
        ),
        Transform.rotate(
          angle: 3.1416,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.948, -0.974),
                end: Alignment(0.912, 0.948),
                colors: [const Color(0xffffffff), const Color(0xffeaeaea)],
                stops: [0.0, 1.0],
              ),
              borderRadius: BorderRadius.circular(11.0),
            ),
            margin: EdgeInsets.all(8.0),
          ),
        ),
        Center(
          child: SizedBox(
            width: 49.0,
            height: 37.0,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 11.0,
                    height: 27.0,
                    child: SvgPicture.string(
                      _svg_gs11rb,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 11.0,
                    height: 27.0,
                    child: SvgPicture.string(
                      _svg_td2owi,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 10.4, end: 10.3),
                  Pin(size: 24.6, start: 3.4),
                  child: SvgPicture.string(
                    _svg_wjwkj,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 11.0,
                    height: 18.0,
                    child: SvgPicture.string(
                      _svg_xv9yg,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 11.0,
                    height: 18.0,
                    child: SvgPicture.string(
                      _svg_cvzrv,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_gs11rb =
    '<svg viewBox="0.0 9.5 11.2 27.3" ><path transform="translate(0.0, -40.01)" d="M 11.16106128692627 76.84880065917969 L 11.16106128692627 57.8748893737793 L 5.276612758636475 52.4914665222168 L 0 49.50410079956055 L 0 73.50039672851562 C 0 75.35308837890625 1.50116229057312 76.84880065917969 3.348310708999634 76.84880065917969 L 11.16106128692627 76.84880065917969 Z" fill="#404040" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_td2owi =
    '<svg viewBox="37.9 9.5 11.2 27.3" ><path transform="translate(-159.87, -40.01)" d="M 197.8179931640625 76.84880065917969 L 205.6306762695312 76.84880065917969 C 207.4835815429688 76.84880065917969 208.9790954589844 75.3475341796875 208.9790954589844 73.50039672851562 L 208.9790954589844 49.50410079956055 L 203.0024108886719 52.9260139465332 L 197.8179931640625 57.8748893737793 L 197.8179931640625 76.84880065917969 Z" fill="#404040" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wjwkj =
    '<svg viewBox="10.4 3.4 28.5 24.6" ><path transform="translate(-43.65, -14.15)" d="M 54.80850982666016 32.01347732543945 L 54.00780487060547 24.59976959228516 L 54.80850982666016 17.50410079956055 L 68.20178985595703 27.54905319213867 L 81.59503173828125 17.50410079956055 L 82.49068450927734 24.21662521362305 L 81.59503173828125 32.01347732543945 L 68.20178985595703 42.05842971801758 L 54.80850982666016 32.01347732543945 Z" fill="#404040" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xv9yg =
    '<svg viewBox="37.9 0.0 11.2 17.9" ><path transform="translate(-159.87, 0.0)" d="M 197.8179931640625 3.357824087142944 L 197.8179931640625 17.86719512939453 L 208.9790954589844 9.496410369873047 L 208.9790954589844 5.031969547271729 C 208.9790954589844 0.8912211656570435 204.2523803710938 -1.469345211982727 200.943115234375 1.013992786407471 L 197.8179931640625 3.357824087142944 Z" fill="#404040" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cvzrv =
    '<svg viewBox="0.0 0.0 11.2 17.9" ><path  d="M 0 9.496410369873047 L 5.133162021636963 13.34628105163574 L 11.16106128692627 17.86719512939453 L 11.16106128692627 3.357824325561523 L 8.035964965820312 1.01399302482605 C 4.721128940582275 -1.469344973564148 0 0.8912213444709778 0 5.031970024108887 L 0 9.496410369873047 Z" fill="#404040" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
