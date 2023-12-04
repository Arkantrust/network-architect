library graphs;

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class Graph {
  final int vertices;
  final List<List<int>> adjList;

  Graph(this.vertices) : adjList = List.generate(vertices, (index) => []);

  void addEdge(int src, int dest) {
    adjList[src].add(dest);
    adjList[dest].add(src);
  }

  void printGraph() {
    for (int i = 0; i < vertices; i++) {
      print("Adjacency list of vertex $i");
      print("head");
      for (int j = 0; j < adjList[i].length; j++) {
        print(" -> ${adjList[i][j]}");
      }
      print("\n");
    }
  }
}

