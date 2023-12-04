import 'package:flutter_test/flutter_test.dart';

import 'package:graphs/graphs.dart';

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
  });

  test('Test Edge class', () {
    final Edge<int> edge = Edge(weight: 1);
    expect(edge.weight, 1);
    expect(edge.copyWith(weight: 2).weight, 2);
  });

  test('Test Node class', () {
    final Node<int> node = Node(data: 1000);
    expect(node.data, 1000);
    expect(node.copyWith(data: 2000).data, 2000);
  });


}
