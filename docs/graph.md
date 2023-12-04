# Graph ADT

A graph is a non-linear data structure that consists of nodes (also called vertices) and edges that connect them. Edges can be directed or undirected.

A graph $G$ is a set of vertices $V$ and edges $E$ where each edge $(u,v)$ is a connection between vertices. $u,v \in V$.

Graph = { Vertices = { $V_1, V_2, ..., V_n$ }, Edges = { $(V_1, V_2), (V_2, V_3), ..., (V_{ n-1 }, V_n)$ } }

## Graph representation

There are two main ways to represent a graph: adjacency matrix and adjacency list.

### Adjacency matrix

An adjacency matrix is a square matrix used to represent a finite graph. The elements of the matrix indicate whether pairs of vertices are adjacent or not in the graph. In an adjacency matrix, the rows represent source vertices and columns represent destination vertices. The value that is stored in the intersection of row $V_i$ and column $V_j$ indicates if there is an edge from vertex $V_i$ to vertex $V_j$.

### Adjacency list

An adjacency list is a collection of unordered lists used to represent a finite graph. Each list describes the set of neighbors of a vertex in the graph. In an adjacency list, the vertices are stored as keys and the adjacency list is stored as a value for each vertex.

## Invariants

Invariants differ depending on the characteristics of the graph. For example, a graph can be directed or undirected, weighted or unweighted, and cyclic or acyclic.

### Orientation

#### Undirected graph

An undirected graph is a graph in which edges have no orientation. The edge $(u,v)$ is identical to the edge $(v,u)$. The edge $(u,v)$ is a connection between vertices $u$ and $v$.

#### Directed graph

A directed graph is a graph in which edges have orientation. The edge $(u,v)$ is a connection from vertex $u$ to vertex $v$.

### Weight

#### Weighted graph

A weighted graph is a graph in which edges have a weight. The weight of an edge is a number that represents the cost of moving from one vertex to another. The opposite is called an unweighted graph in which edges have no weight.

### Cycles

When there is an edge that connects a vertex to itself $(v, v)$ it's called a cycle. A graph with no cycles is called an acyclic graph.

### Connectedness

#### Connected graph

A connected graph is a graph in which there is a path between every pair of vertices. A graph that is not connected is disconnected, if there are two vertices in the graph such that there is not one edge connecting these vertices.

#### Complete graph

A complete graph is a graph in which every pair of vertices is connected by an edge. A complete graph contains all possible edges. A complete graph with $n$ vertices will always have $\frac {n(n-1)}{2}$ edges.

## Graph Operations

| Name | Parameters | Returns |
| --- | --- | --- |
|`NewGraph`| | Graph |
|`AddVertex`| Graph X Vertex | Graph |
|`RemoveVertex`| Graph X Vertex | Graph |
|`AddEdge`| Graph X Vertex X Vertex X Edge | Graph |
|`RemoveEdge`| Graph X Vertex X Vertex | Graph |
|`NumNodes`| Graph | Integer |
|`NumEdges`| Graph | Integer |
|`Contains`| Graph X Vertex | Boolean |
|`Adjacent`| Graph X Vertex X Vertex | Boolean |
|`GetNeighbors`| Graph X Vertex | Vertices = { ... } |
|`HasPath`| Graph X Vertex X Vertex | Boolean |
|`Degree`| Graph X Vertex | Integer |
|`GetNodes`| Graph | Vertices = { ... } |
|`GetEdges`| Graph | Edges = { ... } |
|`GetVertexValue`| Graph X Vertex | Value of Vertex |
|`SetVertexValue`| Graph X Vertex X Value | Graph |
|`GetEdgeValue`| Graph X Vertex X Vertex | Value of Edge |
|`SetEdgeValue`| Graph X Vertex X Vertex X Value | Graph |
|`DFS`| Graph X Vertex | Vertices = { ... } |
|`BFS`| Graph X Vertex | Vertices = { ... } |
|`Dijkstra`| Graph X Vertex X Vertex | Vertices = { ... } |
|`FloydWarshall`| Graph | Paths = { $V_1$ = { Vertices = { ... } }, ..., $V_n$ = { Vertices = { ... } } } |
|`Prim`| Graph | Vertices = { ... } |
|`Kruskal`| Graph | Vertices = { ... } |

### Construction operations

#### `NewGraph()`

"Creates a new empty graph"

{ pre: TRUE }

{ post: Graph = { { $\empty$ }, { $\empty$ } } }

### Modifying operations

#### `AddVertex(Vertex)`

"Adds a vertex to the graph"

{ pre: Graph = { V, E } $\land$ Vertex $\notin$ V $\land$ Vertex $\neq$ $\empty$  }

{ post: Graph = { V $\cup$ { Vertex }, E } }

#### `RemoveVertex(Vertex)`

"Removes a vertex from the graph and all edges that connect to it"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V }

{ post: Graph = { V $\setminus$ { Vertex }, E $\setminus$ { Edge $\in$ E | Vertex $\in$ Edge } } }

#### `AddEdge(Vertex, Vertex, Edge)`

"Adds an edge between two vertices to the graph"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V $\land$ Vertex $\in$ V $\land$ Edge $\neq$ $\empty$ }

{ post: Graph = { V $\cup$ { Vertex, Vertex }, E $\cup$ { Edge } } }

#### `RemoveEdge(Vertex, Vertex)`

"Removes an edge connecting two vertices from the graph"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V $\land$ Vertex $\in$ V }

{ post: Graph = { V, E $\setminus$ { Edge $\in$ E | Vertex $\in$ Edge } } }

#### `SetVertexValue(Vertex, Value)`

"Sets the value of a vertex"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V }

{ post: Graph = { V $\cup$ { Vertex $\rightarrow$ Value }, E } }

#### `SetEdgeValue(Vertex, Vertex, Value)`

"Sets the value of an edge"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V $\land$ Vertex $\in$ V }

{ post: Graph = { V, E $\cup$ { Edge $\rightarrow$ Value } } }

### Query operations

#### `NumNodes()`

"Return the number of nodes in the graph"

{ pre: Graph = { V, E } }

{ post: Integer }

#### `NumEdges()`

"Return the number of edges in the graph"

{ pre: Graph = { V, E } }

{ post: Integer }

#### `Contains(Vertex)`

"Checks if a vertex is in the graph"

{ pre: Graph = { V, E } }

{ post: Boolean }

#### `Adjacent(Vertex, Vertex)`

"Checks if two vertices are adjacent, meaning if there is an edge connecting them"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V $\land$ Vertex $\in$ V }

{ post: Boolean }

#### `GetNeighbors(Vertex)`

"Returns the neighbors of a vertex"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V }

{ post: Vertices = { ... } }

#### `HasPath(Vertex Vertex)`

"Checks if there is a path from one vertex to another"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V $\land$ Vertex $\in$ V }

{ post: Boolean }

#### `Degree(Vertex)`

"Returns the degree of a vertex"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V }

{ post: Integer }

#### `GetNodes()`

"Returns the vertices of the graph"

{ pre: Graph = { V, E } }

{ post: Vertices = { ... } }

#### `GetEdges()`

"Returns the edges of the graph"

{ pre: Graph = { V, E } }

{ post: Edges = { ... } }

#### `GetVertexValue(Vertex)`

"Returns the value of a vertex"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V }

{ post: Value of Vertex }

#### `GetEdgeValue(Vertex, Vertex)`

"Returns the value of an edge"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V $\land$ Vertex $\in$ V }

{ post: Value of Edge }

#### `BFS(Vertex)`

"Performs a breadth-first search starting from the given vertex"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V }

{ post: Vertices = { ... } }

#### `DFS(Vertex)`

"Performs a depth-first search starting from a vertex"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V }

{ post: Vertices = { ... } }

#### `Dijkstra(Vertex, Vertex)`

"Returns the shortest path from a vertex to other vertex"

{ pre: Graph = { V, E } $\land$ Vertex $\in$ V }

{ post: Vertices = { ... } }

#### `FloydWarshall()`

"Returns the shortest path between all pairs of vertices"

{ pre: Graph = { V, E } }

{ post: Paths = { $V_1$ = { Vertices = { ... } }, ..., $V_n$ = { Vertices = { ... } } } }

#### `Prim()`

"Returns the minimum spanning tree of the graph"

{ pre: Graph = { V, E } }

{ post: Vertices = { ... } }

#### `Kruskal()`

"Returns the minimum spanning tree of the graph"

{ pre: Graph = { V, E } }

{ post: Vertices = { ... } }