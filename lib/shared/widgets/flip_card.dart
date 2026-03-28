import 'dart:math' as math;

import 'package:flutter/material.dart';





class FlipCard extends StatefulWidget {
  const FlipCard({
    super.key,
    required this.front,
    required this.back,
    this.duration = const Duration(milliseconds: 600),
  });

  final Widget front;
  final Widget back;
  final Duration duration;

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  bool _showFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );
    _controller.addListener(() {
      final pastHalf = _animation.value >= 0.5;
      if (pastHalf != !_showFront) {
        setState(() => _showFront = !pastHalf);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _flip() {
    if (_controller.isAnimating) return;
    _showFront ? _controller.forward() : _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (d) {
        final delta = (d.primaryVelocity ?? 0).abs();
        if (delta > 80) _flip();
      },
      onTap: _flip,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, _) {
          final angle = _animation.value * math.pi;
          final child = _showFront ? widget.front : widget.back;
          final adjusted = _showFront ? angle : angle - math.pi;

          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.0008)
              ..rotateY(adjusted),
            child: child,
          );
        },
      ),
    );
  }
}
