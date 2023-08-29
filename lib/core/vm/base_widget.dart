import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseWidget<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget? child) builder;
  final T model;
  final Widget? child;
  final Function(T)? onModelReady;
  final Function(T)? onRebuild;

  const BaseWidget({
    Key? key,
    required this.builder,
    required this.model,
    this.child,
    this.onModelReady,
    this.onRebuild,
  }) : super(key: key);

  @override
  BaseWidgetState<T> createState() => BaseWidgetState<T>();
}

class BaseWidgetState<T extends ChangeNotifier> extends State<BaseWidget<T>> {
  late T model;

  @override
  void initState() {
    super.initState();

    model = widget.model;

    if (widget.onModelReady != null) {
      widget.onModelReady!(model);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.onRebuild != null) {
      widget.onRebuild!(model);
    }

    return ChangeNotifierProvider<T?>(
      create: (context) => model,
      child: Consumer<T>(builder: widget.builder, child: Semantics(excludeSemantics: false, child: widget.child)),
    );
  }
}
