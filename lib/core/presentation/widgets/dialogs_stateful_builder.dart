import 'package:flutter/cupertino.dart';

class DialogsStatefulBuilder extends StatefulWidget {
  const DialogsStatefulBuilder({
    required this.builder,
    required this.initState,
    required this.dispose,
    super.key,
  });

  final StatefulWidgetBuilder builder;
  final VoidCallback initState;
  final VoidCallback dispose;

  @override
  DialogsStatefulBuilderState createState() => DialogsStatefulBuilderState();
}

class DialogsStatefulBuilderState extends State<DialogsStatefulBuilder> {
  @override
  Widget build(BuildContext context) => widget.builder(context, setState);

  @override
  void initState() {
    super.initState();

    widget.initState();
  }

  @override
  void dispose() {
    widget.dispose();

    super.dispose();
  }
}
