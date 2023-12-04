import 'package:flutter_test/flutter_test.dart';

import 'package:graphs/graphs.dart';

void main() {


  test('Test Edge class', () {
    const Edge<int> edge = Edge(weight: 1);
    expect(edge.weight, 1);
    expect(edge.copyWith(weight: 2).weight, 2);
  });

  test('Test Node class', () {
    const Node<int> node = Node(data: 1000);
    expect(node.data, 1000);
    expect(node.copyWith(data: 2000).data, 2000);
  });


}
