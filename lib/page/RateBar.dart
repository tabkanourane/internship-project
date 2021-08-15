// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:perfect_body/page/RateDialogPage.dart';
// import 'package:perfect_body/page/RateInfoPage.dart';
// import 'package:perfect_body/widgets/tabbrawidget.dart';
// import 'package:rate_my_app/rate_my_app.dart';

// class RateBar extends StatefulWidget {
//   final RateMyApp rateMyApp;

//   const RateBar({
//     Key key,
//     this.rateMyApp,
//   }) : super(key: key);
//   @override
//   _RateBarState createState() => _RateBarState();
// }

// class _RateBarState extends State<RateBar> {
//   @override
//   Widget build(BuildContext context) => TabBarWidget(
//         // title: FullBody.title,
//         tabs: [
//           Tab(icon: Icon(Icons.open_in_full), text: 'Dialog'),
//           // Tab(icon: Icon(Icons.rate_review), text: 'Comment'),
//           // Tab(icon: Icon(Icons.star_rate_sharp), text: 'Stars'),
//           Tab(icon: Icon(Icons.info_outline_rounded), text: 'Info'),
//         ],
//         children: [
//           RateDialogPage(rateMyApp: widget.rateMyApp),
//           // RateCommentPage(rateMyApp: widget.rateMyApp),
//           // RateStarsPage(rateMyApp: widget.rateMyApp),
//           RateInfoPage(rateMyApp: widget.rateMyApp),
//         ],
//       );
// }
