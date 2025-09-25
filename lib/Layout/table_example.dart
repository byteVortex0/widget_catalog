import 'package:flutter/material.dart';

class TableExample extends StatelessWidget {
  const TableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Table(
          border: TableBorder.all(color: Colors.black, width: 1),
          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(3),
            2: FixedColumnWidth(80),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            const TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'ID',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Age',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                const Padding(padding: EdgeInsets.all(8.0), child: Text('1')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.orange[100],
                    child: const Text('Alice'),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(8.0), child: Text('25')),
              ],
            ),
            TableRow(
              children: [
                const Padding(padding: EdgeInsets.all(8.0), child: Text('2')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[100],
                    child: const Text('Bob'),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(8.0), child: Text('30')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
