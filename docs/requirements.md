# Requirements

In this document you will find the assignment requirements, the game features and a mapping of the features and the requirements.
In the future, the game features will massively outnumber the requirements listed in the [instructions](./Instructions.md), however, due to the lack of time and energy I feel, I will only comply with the necessary requirements

## Game features

| ID | Requirement |
| -- | ----------- |
| R1 | The game must be modeled with graphs |
| R2 | The game must have at least 50 nodes and edges |
| R3 | The game must work with [2 graph representations](#graph-versions) interchangeably |
| R4 | The game must use at least 2 of [these algorithms](#graph-algorithms)|
| R5 | The game must interact with the user through a GUI |

## Graph versions

- [Adjacency matrix](https://en.wikipedia.org/wiki/Adjacency_matrix)
  
- [Adjacency list](https://en.wikipedia.org/wiki/Adjacency_list)

Each graph version must be developed from the [ADT](./graph.md) to the [unit tests](./tests.md).

## Graph algorithms

- [BFS](https://en.wikipedia.org/wiki/Breadth-first_search)
- [DFS](https://en.wikipedia.org/wiki/Depth-first_search)
- [Dijkstra's](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm)
- [Floyd-Warshall](https://en.wikipedia.org/wiki/Floyd%E2%80%93Warshall_algorithm)
- [Prim's](https://en.wikipedia.org/wiki/Prim's_algorithm)
- [Kruskal's](https://en.wikipedia.org/wiki/Kruskal's_algorithm)

## Additional objectives

- document and implement each of the [engineering design process](./design.md) phases for this problem (the game).

- toroughly document the analysis and design phases with:
  - [requirements specification document](./requirements.md)
  - [ADT design](./graph.md)
  - [class diagram]()
  - [unit tests design](./tests.md)

## Course objective

These are objectives important to the course, which are already met by [the student](https://www.github.com/Arkantrust), but they are still important to the project.

1. Explain the basic concepts of graph theory.

2. Model a problem's information as a graph.

Apply within the context of a problem:

  3. breadth-first and depth-first traversal algorithms.

  4. Djiikstra's and Floyd-Warshall to solve shortest path problems.
  
  5. Prim's and Kruskal's algorithms to solve minimum spanning tree problems.

6. Design and implement graphs using adjacency matrix and adjacency list representations.

7. Implement shortest path finding and traversal algorithms of graphs.

8. Design and implement unit tests for graphs.
