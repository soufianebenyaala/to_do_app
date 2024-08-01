import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/dashboard/widgets/clock/clock_dial_painter.dart';
import 'package:vector_math/vector_math_64.dart' show radians;

import 'package:todo_app/dashboard/widgets/clock/container_hand.dart';
import 'package:todo_app/dashboard/widgets/clock/drawn_hand.dart';

/// Total distance traveled by a second or a minute hand, each second or minute,
/// respectively.
final radiansPerTick = radians(360 / 60);

/// Total distance traveled by an hour hand, each hour, in radians.
final radiansPerHour = radians(360 / 12);

class ClockWiget extends StatefulWidget {
  const ClockWiget({super.key});

  @override
  State<ClockWiget> createState() => _ClockWigetState();
}

class _ClockWigetState extends State<ClockWiget> {
  DateTime _dateTime = DateTime.now();
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: customTheme.backgroundColor,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.surfaceContainer,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 7,
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
            child: CustomPaint(
              painter: ClockDialPainter(
                textColor: Theme.of(context).colorScheme.primary,
                tickPaintColor:
                    Theme.of(context).colorScheme.surfaceContainerHighest,
              ),
            ),
          ),
          // Example of a hand drawn with [Container].
          ContainerHand(
            color: Colors.transparent,
            size: 0.4,
            angleRadians: _dateTime.hour * radiansPerHour +
                (_dateTime.minute / 60) * radiansPerHour,
            child: Transform.translate(
              offset: const Offset(0.0, -60.0),
              child: Container(
                width: 8,
                height: 120,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          // Example of a hand drawn with [CustomPainter].
          //Minute Hand
          DrawnHand(
            color: Theme.of(context).highlightColor,
            thickness: 3,
            size: 0.7,
            angleRadians: _dateTime.minute * radiansPerTick,
          ),
          //Second hand
          DrawnHand(
            color: Theme.of(context).colorScheme.primary,
            thickness: 3,
            size: 0.8,
            angleRadians: _dateTime.second * radiansPerTick,
          ),
          Center(
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 7,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
