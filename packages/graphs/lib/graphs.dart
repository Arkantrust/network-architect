library graphs;

/// A Graph is a non-linear data structure consisting of nodes and edges.
abstract class Graph<V, E> {
  const Graph();

  void addNode(Node<V> node);

  void addEdge(Node<V> from, Node<V> to, Edge<E> edge);

  void removeNode(Node<V> node);

  void removeEdge(Node<V> from, Node<V> to);

  void clear();

  int get numNodes;

  int get numEdges;

  bool contains(Node<V> node);

  bool adjacent(Node<V> node, Node<V> neighbor);

  E edgeValue(Node<V> from, Node<V> to);

  void setEdgeValue(Node<V> from, Node<V> to, E value);

  V nodeValue(Node<V> node);

  void setNodeValue(Node<V> node, V value);

  List<Node<V>> neighbors(Node<V> node);

  bool hasPath(Node<V> from, Node<V> to);

  int degree(Node<V> node);

  List<Node<V>> get nodes;

  List<Edge<E>> get edges;

  List<Node<V>> dfs(Node<V> start);

  List<Node<V>> bfs(Node<V> start);

  List<Node<V>> djikstra(Node<V> from, Node<V> end);

  List<List<Node<V>>> floydWarshall();

  List<Node<V>> prim();

  List<Node<V>> kruskal();

}

class Node<E> {

  final E data;

  const Node({required this.data});

  Node<E> copyWith({E? data}) {
    return Node(data: data ?? this.data);
  }

}

class Edge<E> {

  final E weight;

  const Edge({required this.weight});

  Edge<E> copyWith({E? weight}) {
    return Edge(weight: weight ?? this.weight);
  }

}

class AdjacencyMatrixGraph<V, E> extends Graph<V, E> {
  late List<List<Node<V>?>> _nodes;
  late List<List<Edge<E>?>> _edges;

  AdjacencyMatrixGraph() {
    _nodes = [];
    _edges = [];
  }

  @override
  void addNode(Node<V> node) {
    _nodes.add([node, ...List.filled(_nodes.length, null)]);
    for (var row in _edges) {
      row.add(null);
    }
    _edges.add(List.filled(_nodes.length, null));
  }
  
  @override
  void addEdge(Node<V> from, Node<V> to, Edge<E> edge) {
    final fromIndex = _indexOfNode(from);
    final toIndex = _indexOfNode(to);
    if (fromIndex != -1 && toIndex != -1) {
      _edges[fromIndex][toIndex] = edge;
      _edges[toIndex][fromIndex] = edge;
    }
  }

  @override
  void removeNode(Node<V> node) {
    final index = _indexOfNode(node);
    if (index != -1) {
      _nodes.removeAt(index);
      for (var row in _edges) {
        row.removeAt(index);
      }
      _edges.removeAt(index);
    }
  }

  @override
  void removeEdge(Node<V> from, Node<V> to) {
    final fromIndex = _indexOfNode(from);
    final toIndex = _indexOfNode(to);
    if (fromIndex != -1 && toIndex != -1) {
      _edges[fromIndex][toIndex] = null;
      _edges[toIndex][fromIndex] = null;
    }
  }

  // Other methods can be implemented similarly

  int _indexOfNode(Node<V> node) {
    for (var i = 0; i < _nodes.length; i++) {
      if (_nodes[i].first!.data == node.data) {
        return i;
      }
    }
    return -1;
  }

  
  @override
  bool adjacent(Node<V> node, Node<V> neighbor) {
    // TODO: implement adjacent
    throw UnimplementedError();
  }
  
  @override
  List<Node<V>> bfs(Node<V> start) {
    // TODO: implement bfs
    throw UnimplementedError();
  }
  
  @override
  void clear() {
    // TODO: implement clear
  }
  
  @override
  bool contains(Node<V> node) {
    // TODO: implement contains
    throw UnimplementedError();
  }
  
  @override
  int degree(Node<V> node) {
    // TODO: implement degree
    throw UnimplementedError();
  }
  
  @override
  List<Node<V>> dfs(Node<V> start) {
    // TODO: implement dfs
    throw UnimplementedError();
  }
  
  @override
  List<Node<V>> djikstra(Node<V> from, Node<V> end) {
    // TODO: implement djikstra
    throw UnimplementedError();
  }
  
  @override
  E edgeValue(Node<V> from, Node<V> to) {
    // TODO: implement edgeValue
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement edges
  List<Edge<E>> get edges => throw UnimplementedError();
  
  @override
  List<List<Node<V>>> floydWarshall() {
    // TODO: implement floydWarshall
    throw UnimplementedError();
  }
  
  @override
  bool hasPath(Node<V> from, Node<V> to) {
    // TODO: implement hasPath
    throw UnimplementedError();
  }
  
  @override
  List<Node<V>> kruskal() {
    // TODO: implement kruskal
    throw UnimplementedError();
  }
  
  @override
  List<Node<V>> neighbors(Node<V> node) {
    // TODO: implement neighbors
    throw UnimplementedError();
  }
  
  @override
  V nodeValue(Node<V> node) {
    // TODO: implement nodeValue
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement nodes
  List<Node<V>> get nodes => throw UnimplementedError();
  
  @override
  // TODO: implement numEdges
  int get numEdges => throw UnimplementedError();
  
  @override
  // TODO: implement numNodes
  int get numNodes => throw UnimplementedError();
  
  @override
  List<Node<V>> prim() {
    // TODO: implement prim
    throw UnimplementedError();
  }
  
  @override
  void setEdgeValue(Node<V> from, Node<V> to, E value) {
    // TODO: implement setEdgeValue
  }
  
  @override
  void setNodeValue(Node<V> node, V value) {
    // TODO: implement setNodeValue
  }

}

class AdjacencyListGraph<V, E> extends Graph<V, E> {
  late List<Node<V>> _nodes;
  late List<List<Edge<E>?>> _edges;

  AdjacencyListGraph() {
    _nodes = [];
    _edges = [];
  }

  @override
  void addNode(Node<V> node) {
    _nodes.add(node);
    _edges.add([]);
  }

  @override
  void addEdge(Node<V> from, Node<V> to, Edge<E> edge) {
    final fromIndex = _indexOfNode(from);
    final toIndex = _indexOfNode(to);
    if (fromIndex != -1 && toIndex != -1) {
      _edges[fromIndex].add(edge);
      _edges[toIndex].add(edge);
    }
  }

  @override
  void removeNode(Node<V> node) {
    final index = _indexOfNode(node);
    if (index != -1) {
      _nodes.removeAt(index);
      _edges.removeAt(index);
      for (var row in _edges) {
        row.removeWhere((edge) => edge == null);
      }
    }
  }

  @override
  void removeEdge(Node<V> from, Node<V> to) {
    final fromIndex = _indexOfNode(from);
    final toIndex = _indexOfNode(to);
    if (fromIndex != -1 && toIndex != -1) {
      _edges[fromIndex]
          .removeWhere((edge) => edge?.weight == _edges[toIndex][0]?.weight);
      _edges[toIndex]
          .removeWhere((edge) => edge?.weight == _edges[fromIndex][0]?.weight);
    }
  }

  // Other methods can be implemented similarly

  int _indexOfNode(Node<V> node) {
    for (var i = 0; i < _nodes.length; i++) {
      if (_nodes[i].data == node.data) {
        return i;
      }
    }
    return -1;
  }
  
  @override
  bool adjacent(Node<V> node, Node<V> neighbor) {
    // TODO: implement adjacent
    throw UnimplementedError();
  }
  
  @override
  List<Node<V>> bfs(Node<V> start) {
    // TODO: implement bfs
    throw UnimplementedError();
  }
  
  @override
  void clear() {
    // TODO: implement clear
  }
  
  @override
  bool contains(Node<V> node) {
    // TODO: implement contains
    throw UnimplementedError();
  }
  
  @override
  int degree(Node<V> node) {
    // TODO: implement degree
    throw UnimplementedError();
  }
  
  @override
  List<Node<V>> dfs(Node<V> start) {
    // TODO: implement dfs
    throw UnimplementedError();
  }
  
  @override
  List<Node<V>> djikstra(Node<V> from, Node<V> end) {
    // TODO: implement djikstra
    throw UnimplementedError();
  }
  
  @override
  E edgeValue(Node<V> from, Node<V> to) {
    // TODO: implement edgeValue
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement edges
  List<Edge<E>> get edges => throw UnimplementedError();
  
  @override
  List<List<Node<V>>> floydWarshall() {
    // TODO: implement floydWarshall
    throw UnimplementedError();
  }
  
  @override
  bool hasPath(Node<V> from, Node<V> to) {
    // TODO: implement hasPath
    throw UnimplementedError();
  }
  
  @override
  List<Node<V>> kruskal() {
    // TODO: implement kruskal
    throw UnimplementedError();
  }
  
  @override
  List<Node<V>> neighbors(Node<V> node) {
    // TODO: implement neighbors
    throw UnimplementedError();
  }
  
  @override
  V nodeValue(Node<V> node) {
    // TODO: implement nodeValue
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement nodes
  List<Node<V>> get nodes => throw UnimplementedError();
  
  @override
  // TODO: implement numEdges
  int get numEdges => throw UnimplementedError();
  
  @override
  // TODO: implement numNodes
  int get numNodes => throw UnimplementedError();
  
  @override
  List<Node<V>> prim() {
    // TODO: implement prim
    throw UnimplementedError();
  }
  
  @override
  void setEdgeValue(Node<V> from, Node<V> to, E value) {
    // TODO: implement setEdgeValue
  }
  
  @override
  void setNodeValue(Node<V> node, V value) {
    // TODO: implement setNodeValue
  }
}
