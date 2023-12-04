import 'package:flutter_test/flutter_test.dart';

import 'package:graphs/graphs.dart';

void main() {
  test('Create list graph', () {
    AdjacencyListGraph graph = AdjacencyListGraph();
    expect(graph.numNodes, 0);
    expect(graph.numEdges, 0);
  });
}
