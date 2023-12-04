import 'package:flutter_test/flutter_test.dart';

import 'package:graphs/graphs.dart';

void main() {
  test('Create matrix graph', () {
    AdjacencyMatrixGraph graph = AdjacencyMatrixGraph();
    expect(graph.numNodes, 0);
    expect(graph.numEdges, 0);
  });
}
