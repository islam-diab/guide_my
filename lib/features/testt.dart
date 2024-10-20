// // Copyright 2019 The Flutter Authors. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.

// import 'package:animations/animations.dart';
// import 'package:flutter/material.dart';
// import 'package:guide_my/core/helper/app_assets.dart';
// import 'package:guide_my/features/home/widget/location_list/location_shimmer.dart';

// void main() {
//   runApp(const OpenContainerTransformDemo());
// }

// class OpenContainerTransformDemo extends StatefulWidget {
//   const OpenContainerTransformDemo({super.key});

//   @override
//   State<OpenContainerTransformDemo> createState() =>
//       _OpenContainerTransformDemoState();
// }

// class _OpenContainerTransformDemoState
//     extends State<OpenContainerTransformDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: ListView.builder(
//             itemCount: 10,
//             itemBuilder: (context, x) {
//               return OpenContainer(
//                 openBuilder: (context, openContainer) => const DetailsPage(),
//                 transitionType: ContainerTransitionType.fadeThrough,
//                 closedShape: const RoundedRectangleBorder(),
//                 closedElevation: 0,
//                 closedBuilder: (context, openContainer) {
//                   return const SizedBox(child: LocationShimmer());
//                 },
//               );
//             }),
//       ),
//     );
//   }
// }

// class DetailsPage extends StatelessWidget {
//   const DetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'DetailsPageTitle',
//         ),
//       ),
//       body: ListView(
//         children: [
//           Container(
//             color: Colors.black38,
//             height: 250,
//             child: Padding(
//               padding: const EdgeInsets.all(70),
//               child: Image.asset(
//                 AppAssets.whatsapp,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Title',
//                   style: textTheme.headlineSmall!.copyWith(
//                     color: Colors.black54,
//                     fontSize: 30,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   _loremIpsumParagraph,
//                   style: textTheme.bodyMedium!.copyWith(
//                     color: Colors.black54,
//                     height: 1.5,
//                     fontSize: 16,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// const String _loremIpsumParagraph =
//     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
//     'tempor incididunt ut labore et dolore magna aliqua. Vulputate dignissim '
//     'suspendisse in est. Ut ornare lectus sit amet. Eget nunc lobortis mattis '
//     'aliquam faucibus purus in. Hendrerit gravida rutrum quisque non tellus '
//     'orci ac auctor. Mattis aliquam faucibus purus in massa. Tellus rutrum '
//     'tellus pellentesque eu tincidunt tortor. Nunc eget lorem dolor sed. Nulla '
//     'at volutpat diam ut venenatis tellus in metus. Tellus cras adipiscing enim '
//     'eu turpis. Pretium fusce id velit ut tortor. Adipiscing enim eu turpis '
//     'egestas pretium. Quis varius quam quisque id. Blandit aliquam etiam erat '
//     'velit scelerisque. In nisl nisi scelerisque eu. Semper risus in hendrerit '
//     'gravida rutrum quisque. Suspendisse in est ante in nibh mauris cursus '
//     'mattis molestie. Adipiscing elit duis tristique sollicitudin nibh sit '
//     'amet commodo nulla. Pretium viverra suspendisse potenti nullam ac tortor '
//     'vitae.\n'
//     '\n'
//     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
//     'tempor incididunt ut labore et dolore magna aliqua. Vulputate dignissim '
//     'suspendisse in est. Ut ornare lectus sit amet. Eget nunc lobortis mattis '
//     'aliquam faucibus purus in. Hendrerit gravida rutrum quisque non tellus '
//     'orci ac auctor. Mattis aliquam faucibus purus in massa. Tellus rutrum '
//     'tellus pellentesque eu tincidunt tortor. Nunc eget lorem dolor sed. Nulla '
//     'at volutpat diam ut venenatis tellus in metus. Tellus cras adipiscing enim '
//     'eu turpis. Pretium fusce id velit ut tortor. Adipiscing enim eu turpis '
//     'egestas pretium. Quis varius quam quisque id. Blandit aliquam etiam erat '
//     'velit scelerisque. In nisl nisi scelerisque eu. Semper risus in hendrerit '
//     'gravida rutrum quisque. Suspendisse in est ante in nibh mauris cursus '
//     'mattis molestie. Adipiscing elit duis tristique sollicitudin nibh sit '
//     'amet commodo nulla. Pretium viverra suspendisse potenti nullam ac tortor '
//     'vitae';
