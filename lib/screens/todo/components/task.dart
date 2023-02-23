
import 'package:beam/models/todo/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoTask extends StatefulWidget {
  final ToDoData task;
  const ToDoTask({super.key, required this.task});

  @override
  State<ToDoTask> createState() => ToDoTaskState();
}

class ToDoTaskState extends State<ToDoTask> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.task.title != "")
              Text(
                widget.task.title!,
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
            if (widget.task.description != "")
              const SizedBox(
                height: 5,
              ),
            if (widget.task.description != "") Text(widget.task.description!),
            if ((widget.task.date != "") && (widget.task.endtime != ""))
              const SizedBox(
                height: 5,
              ),
            if ((widget.task.date != "") && (widget.task.endtime != ""))
              Text(
                "${widget.task.date!}  ${widget.task.endtime}",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
            if ((widget.task.date != "") && (widget.task.endtime == ""))
              Text(
                widget.task.date!,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
            if ((widget.task.date == "") && (widget.task.endtime != ""))
              Text(
                widget.task.endtime!,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
          ],
        ),
      ),
    );
  }
}
