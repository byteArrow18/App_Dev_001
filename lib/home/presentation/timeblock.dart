import 'package:flutter/material.dart';

class TimeBlockWidget extends StatefulWidget {
  const TimeBlockWidget({
    super.key,
    required this.index,
    required this.label,
    required this.color,
    required this.selectBuildTimeBlock,
    required this.selectTimeBuild
  });

  final int selectBuildTimeBlock;
  final int index;
  final String label;
  final Color color;
  final ValueChanged selectTimeBuild;

  @override
  State<TimeBlockWidget> createState() => _TimeBlockWidgetState();
}

class _TimeBlockWidgetState extends State<TimeBlockWidget> {
  // int _selectBuildTimeBlock = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          widget.selectTimeBuild(widget.index);
          // ignore: avoid_print
          print('${widget.label} clicked');
        },
        child: Container(
          margin: EdgeInsets.all(5),
          height: 50,
          decoration: BoxDecoration(
            color: widget.selectBuildTimeBlock == widget.index ? const Color.fromARGB(255, 20, 244, 136) : widget.color,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: widget.selectBuildTimeBlock == widget.index ? const Color.fromARGB(255, 62, 236, 152) : Colors.transparent,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: widget.selectBuildTimeBlock == widget.index ? const Color.fromARGB(255, 52, 163, 110) : Colors.black12,
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}



