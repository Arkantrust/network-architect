# Engineering Design Methodology

## Introduction

This document holds all the phases of the engineering design methodology that I've followed to develop the project. However, more than a soulless report following a methodology and an example, it is a construction of the process that occurred inside my head to develop this great project. It is a reflection of the decisions that I've made and the reasons behind them. In other words, this document holds a view into my mind while developing the project through the engineering design methodology.

## Index

1. [Problem Identification](#problem-identification)

2. [Information Gathering](#information-gathering)

3. [Solution Crafting](#solution-crafting)

4. [Design Sketches](#design-sketches)

5. [Solutions Evaluation](#solutions-evaluation)

6. [Game Specifications](#game-specifications)

7. [Design Implementtion](#design-implementation)

## Problem Identification

Demonstrate knowledge about graph theory by developing a game modeled with graphs. The game must fulfil the requirements which can be found in the [requirements document](./requirements.md). A little summary, the game must:

1. Be modeled with graphs.

2. Have a minimum of 50 nodes and 50 edges.

3. Work at anytime with 2 graph representations interchangeably, which must both be developed from the ADT to the unit tests:
    - [Adjacency matrix](https://en.wikipedia.org/wiki/Adjacency_matrix)
  
    - [Adjacency list](https://en.wikipedia.org/wiki/Adjacency_list)

4. Use at least 2 of the following algorithms:
    - [BFS](https://en.wikipedia.org/wiki/Breadth-first_search)
    - [DFS](https://en.wikipedia.org/wiki/Depth-first_search)
    - [Dijkstra's](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm)
    - [Floyd-Warshall](https://en.wikipedia.org/wiki/Floyd%E2%80%93Warshall_algorithm)
    - [Prim's](https://en.wikipedia.org/wiki/Prim's_algorithm)
    - [Kruskal's](https://en.wikipedia.org/wiki/Kruskal's_algorithm)

5. Interact with the user through a GUI.

Also, it's important to keep in mind the objectives (course-wise), these are the sole purpose of this project, which include being able to:

1. Explain the basic concepts of graph theory.

2. Model a problem's information as a graph.

Apply within the context of a problem:

  3. breadth-first and depth-first traversal algorithms.

  4. Djiikstra's and Floyd-Warshall to solve shortest path problems.
  
  5. Prim's and Kruskal's algorithms to solve minimum spanning tree problems.

6. Design and implement graphs using adjacency matrix and adjacency list representations.

7. Implement shortest path finding and traversal algorithms of graphs.

8. Design and implement unit tests for graphs.

In summary, the purpose of this project more than solving a problem is demonstrating the **knowledge** and **capabilities** of the student, in this case me, [David Dulce](https://github.com/Arkantrust), to **design**, **model** and **implement** software solutions using **graphs** as a data structure.

## Information Gathering

### Graph

A graph is a non-linear data structure that consists of vertices (also called nodes) and edges that connect them. Edges can be directed or undirected and can have a weight.

### Adjaency matrix

An adjacency matrix is a square matrix used to represent a finite graph. The rows represent source vertices and columns represent destination vertices. The value that is stored in the intersection of row $V_i$ and column $V_j$ indicates if there is an edge from vertex $V_i$ to vertex $V_j$.

### Adjacency list

An adjacency list is a collection of unordered lists used to represent a finite graph. Each list describes the set of neighbors of a vertex in the graph. The vertices are stored as keys and the adjacency list is stored as a value for each vertex.

### Depth-first search

Depth-first search is an algorithm for traversing or searching graphs. The algorithm starts at the root node and explores as far as possible along each branch before backtracking and then repeating the process for the next unexplored node. That's why it's depth-first, it's usually implemented using a stack or recursion.

### Breadth-first search

Breadth-first search is an algorithm for traversing or searching graphs. It starts at the root node and explores all of the neighbor nodes at the present depth prior to moving on to the nodes at the next depth level. That's why it's called breadth-first, it's usually implemented using a queue.

### Dijkstra's algorithm

Dijkstra's algorithm is an algorithm for finding the shortest paths between nodes in a weighted graph, which may represent, for example, a computer network where the weight represents the bits that can travel per second (b/s) between two nodes.

### Floyd-Warshall algorithm

The Floyd–Warshall algorithm is an algorithm for finding shortest paths in a weighted graph with positive or negative edge weights.

### Prim's algorithm

Prim's algorithm is a greedy algorithm that finds a minimum spanning tree for a weighted undirected graph.

### Kruskal's algorithm

Kruskal's algorithm is a greedy algorithm that finds a minimum spanning tree for a weighted undirected graph.

A mathematical definition of these operations can be found in the [graph ADT](./graph.md) document.

### GUI

A graphical user interface is a form of user interface that allows users to interact with electronic devices through graphical icons and audio indicator such as primary notation, instead of text-based user interfaces, typed command labels or text navigation.

## Solution Crafting

There are **TOO MANY** possible solutions for this problem, so I'll just list the ones that I've considered and the one that I've chosen.

### Maze game

A maze is a game in which the player must navigate through a circuit. The player can move in any of the four directions but can't move through walls. The objective of the game is to reach the exit without touching the walls.

### Pacman

Pacman is a classic game, but I'll explain it anyway. Alike a maze there is a circuit and the player must move through it. The objective of the game is to eat all the cookies, without being eaten by the ghosts.

### Cross the bridge

This game is based on the [Konigsberg bridge problem](https://en.wikipedia.org/wiki/Seven_Bridges_of_K%C3%B6nigsberg) which makes it self-explanatory, but here is the concept anyways: The player must cross all the bridges without crossing the same bridge twice.

### Computer Network Game

The concept of this game is pretty simple "connect all network devices", the player who is a [network architect](https://en.wikipedia.org/wiki/Network_architect) must connect all the devices in the network in such a way that the budget requirement is met. In other words, the player is given a budget and a set of instructions to connect the devices. Then the player must orchestrate the connections between the devices in such a way that the budget is not exceeded. For this, different devices (nodes) like routers or switches and links (edges) like connections over ethernet, wifi, IoT protocols like zigbee are given to the player, each affecting the budget differently.

## Design Sketches

Before designing the best possible solution, it's necessary to discard those that are not feasible. For starters, the maze game and the pacman game are not good solutions specifically for this set of requirements because it wouldn't be easy to model 50 nodes and edges in any of those games, the user experience would be highly affected and the games would be unplayable. So, we are left with the cross the bridge game and the computer network game.

The best way to model and understand the capabilities of these solutions is to know how the game's features fit the [requirements](./requirements.md#game-features).

### Cross the bridge

The cross the bridge game is modeled with a graph where the nodes are the islands and the edges are the bridges. The player can move from one island to another through a bridge, but can't move through the same bridge twice. The objective of the game is to reach the last island without crossing the same bridge twice. 

The game can be modeled with a graph, it can work with both versions of graph, and, it can be modeled with a GUI either 2D where the player clicks the bridge they want to go next or 3D where the player walks through each bridge.

The problem arises with second and fourth requirements. First, it would be practically a joke to cross 50 island connected by at least 50 bridges, it is possible, but it would be very difficult for a player to achieve that, without mentioning that the game needs to scale in even numbers due to [Euler's solution](https://maa.org/press/periodicals/convergence/leonard-eulers-solution-to-the-konigsberg-bridge-problem). Second, it can use DFS to know if the player has crossed the same bridge twice, however, it doesn't have a straight-forward way to use Dijkstra's, Floyd-Warshall, Prim's or Kruskal's algorithms. Fortunately, it is possible to assign a weight to each bridge and use Dijkstra's, Floyd-Warshall, Prim's or Kruskal's algorithms to find the shortest path between the first and last island. A practical application of these weights would be in the case that the player has limited time or a limited budget to cross the bridges and the weight represents the time or the cost of crossing the bridge. Honestly, it's possible but comes with a bit of a stretch.

### Computer Network Game

The computer network game is modeled with a graph where the nodes are the devices and the edges are the connections between them. The player can connect two devices through a connection, but can't connect the same device twice. The objective of the game is to connect all the devices in the network in such a way that the budget requirement is met.

The game can be modeled with a graph, it can work with both versions of graph, it can be modeled with a GUI either by a drag and drop interface where the player drags the devices and connections to the desired position or a [IaC](https://www.redhat.com/en/topics/automation/what-is-infrastructure-as-code-iac) interface where the player writes the code to connect the devices and connections, it can use practically all the algorithms mentioned in the requirements and it can be scaled to 50 devices and 50 connections.

The only problem is that it's not a game, it's a real-life problem that network architects face every day, and as such it comes with a bit of a learning curve because the player would need to read a bit about network architecture, network devices and network protocols to be able to play the game. The course isn't focused in these topics and I don't really have time to write a bunch of tutorials on network architecture, so for now, the game will only try to connect the devices in such a way that the budget is not exceeded with fictional devices and connections based on real life counterparts but over simplified.

In summary, both games are good solutions for these set of requirements, however the second requirement is a little bit of a hassle for the cross the bridge game.

## Solutions Evaluation

In order to determine which solution is the best fit for the given problem, it's necessary to evaluate each solution against the [requirements](./requirements.md) and objectives of the project. Mapping each game's features to a requirement will give us a better understanding of the solution's capabilities.

Also, by analyzing the last step, I've come up with 2 non-functional requirements that will help me determine which solution is the best fit for the problem.

### Non-functional requirements

1. Good User Experience (**UX**).

The player must be able to play the game without any problems, the game must be intuitive and easy to play.

2. Good Developer Experience (**DX**).

The developer must be able to develop the game without major problems.

### Requirements - Features Matrix

Each of these requirements will be evaluated with a scale from 1 to 3, where 1 is good and 3 is bad, at the end the sum of the scores will determine which solution is the best fit for the problem.

| Requirement | Cross the bridge | Computer network |
| ----------- | ---------------- | ---------------- |
| R1 - Can be modeled with graphs? | 3 | 3 |
| R2 - Difficulty to be modeled with 50 nodes and edges | 1 | 2 |
| R3 - Can work with two versions of graph? | 3 | 3 |
| R4 - Can use at least two of the already mentioned algorithms? | 1 | 3 |
| R5 - Can be implemented with a UI?          | 3 | 3 |
| R6 - Good UX?                               | 1 | 2 |
| R7 - Good DX?                               | 2 | 3 |
| Total | 14 | 19 | 

As we can see mapping the requirements to the features of each game, gives us a better understanding of the capabilities of each solution. Now, I'll proceed to explain my answers to these questions more explicitly.

First, both are games that are inherently modeled with graphs, the cross the bridge game is modeled with a graph where the nodes are the islands and the edges are the bridges, and the computer network game is modeled with a graph where the nodes are the devices and the edges are the connections between them.
Second, both can easily work with both versions of the graph and can be implemented with a UI. However, it's easier to think about a computer network with 50 devices and a lot of connections between them rather than 50 islands connected by at least 50 bridges. Also, the computer network game can use all the algorithms mentioned in the requirements, while the cross the bridge game can only use DFS without over complicating the game.

Finally, although UX and DX are more subjective than the other requirements and shouldn't be taken into account in a formal analysis process, I've decided to include them because they affect the efficiency of development and effectiveness of the game which play a huge role in the process of planning a process and coming up with a solution for a given problem.

First, The cross the bridge game is a simple game (without the weights and 50 nodes and edges requirements), it's easy to play and easy to develop but adding these requirements involves such levels of complication that It's not probable that someone would find fun playing such challenging game, maybe if the second requirement didn't existed, It would be a better solution.

Second, the computer network game would be easy to develop given my interest on the topic and my background in telematics, however, the learning curve for the player would be a little bit steep, but it's not impossible to overcome. A simple explanation of how a network works and how certain devices and connections affect the budget would be enough to get the player started.

In conclusion, both games would be a good implementation but given my telematics background and the difficulty of trying to traverse 50 islands with 50 edges, **the best implementation is the computer network game**.

## Game Specifications

Such a complex game as Network Architect needs a lot of planning and design to be able to be implemented, in my opinion it needs a separate document to explain the game's features and how they are implemented. But, for the sake of simplicity, I'll summarize the game's features and how they are implemented in this document. I'll divide the requirements between UI and logic, and then I'll explain each of them.

Keep in mind this is a preliminary version of the game, also called an alpha, so it'll just include a demo to showcase the game. A later objective of the game will be to allow players to

- create their own levels and share them with other players.

- add network requirements based on node physical distances, bandwidth, etc.

### Logic

Computer networks are made of devices and connections between them, so the game will be modeled with a graph where the nodes are the devices and the edges are the connections between them. But there are currently two constraints, first the budget measure din USD$, second the number of connections each device can have (ports), wireless connections don't affect the number of ports of a device.

Testing the network will be done by first checking the budget, then checking the connections to see if there are any disconnected devices, and finally checking if there are any connections that the devices can't have. If all these tests are passed, then the network is valid.

The logic of the game involves the following features:

- Network devices (graph nodes) with name and cost.

- Network connections (graph edges) with name and cost.

- Network budget (USD$) it's said to be exceeded when the sum of the costs of all network devices is greater than the given budget. And it's said to be met when the sum of the costs of all network devices is less than or equal to the given budget.

- Network devices and connections can be added, removed and reconnected to the network.

- There can't be network devices disconnected from the network nor connections without network devices in both ends.

- There are certain connections that can't be connected to certain devices, for example, a router can't be connected to a smartphone. This is because of the different network protocols that each device uses.

For this version of the game these will be the available devices and connections:

#### Connections

##### Wired

- Ethernet: Copper wire with various types and implementations, it's the most common connection in a network. There are 2 types of ethernet cables:

  - 5E: cost: $25.

  - 6: cost: $40.

- Fiber Optic: Fiber optic cable with various types and implementations, it's the fastest connection in a network. There are 2 types of fiber optic cables:

  - Single Mode: cost: $100.

  - Multi Mode: cost: $50.

##### Wireless

- Wi-Fi: Wireless connection with various types and implementations, it's the most common wireless connection in a network. There are 2 types of Wi-Fi connections:

  - 2.4GHz: cost: $30.

  - 5GHz: cost: $50.

- Zigbee: Wireless connection with various types and implementations, it's the most common IoT connection in a network.

  - cost: $35.

- Bluetooth: Wireless connection with various types and implementations, it's the most common wireless connection in a network.
  
    - cost: $20.

#### Devices

- Wireless devices can only be connected through wireless connections
- Wired devices can only be connected through wired connections.
- Hybrid devices can be connected through both wired and wireless connections.

- Router: a router is a networking device that forwards data packets between computer networks. It will only allow connections to other routers and switches.

  - Visco 900: cost: $100, ports: 5.

  - Visco 1000: cost: $200, ports: 8.

- Switch: a switch is a networking device that connects devices on a computer network by using packet switching to receive and forward data to the destination device. For this version of the game there will be no difference between L2 and L3 switches, so switches will only allow connections to any Wired Device (Computer, Wireless Access Point, Router).

  - Visco 110: cost: $50, ports: 8.

  - Visco 130: cost: $125, ports: 15.

  - Visco 9200: cost: $250, ports: 25.


- Wireless Access Point (WAP): a wireless access point (WAP) is a networking hardware device that allows Wi-Fi devices to connect to a wired network. It is also sometimes called an access point (AP). It allows connectios to switches and Wi-Fi devices. Only need 1 port.

  - Visco 9136: cost: $50.

  - Visco 9166: cost: $125.

- IoT device: an IoT device is any device that can connect to the internet and transmit data that has been assigned an IP address. Supported connections: Wireless connections (Wi-Fi, Zigbee, Bluetooth).

  - Smart Fridge: cost: $200.

  - Smart Light: cost: $25.

  - Smart Thermostat: cost: $35.

  - Smart Doorbell: cost: $100.

  - Smart Speaker: cost: $50.

  - Smart Vacuum: cost: $75.

  - Smart TV: cost: $300.

- Computer: a computer is any type of device that can be used to process data. Supported connections: Wired connections (Ethernet, Fiber Optic), Wireless connections (Wi-Fi, Bluetooth).

  - Desktop: cost: $500, wired connections, ports: 1.

  - Laptop: cost: $1000 wired connections and wireless connections, ports: 1.

  - Tablet: cost: $750, wireless connections.

  - Smartphone: cost: $1500, wireless connections.

### UI

This version of the game just needs three screens

#### Home menu

This screen is the first screen that the player sees when opening the game, it has three buttons:

- `Play`: to start the game.
- `How to play`: to read the wiki of the game with short documentation about the usage of each network device and connection with the label.
- `Exit`: A bit self-explanatory.

and a label to see my [github profile](https://github.com/Arkantrust) in a corner.

For this alpha version, the `'How to play'` button won't work.

#### Levels

This screen is the screen displayed to the player when the `Play` button is clicked, it'll show the different levels available to the game as tiles, each tile will have:

- Level name.
- Creator's name.
- Description.
- Level difficulty (Easy, Medium, Hard, [CCIE](https://www.cisco.com/c/en/us/training-events/training-certifications/certifications/expert.html)).
- A label with the budget in `USD$`.

#### Simulator

This is the main game screen, here the player will create the network, ideally it would work alike [Cisco Packet Tracer](https://www.netacad.com/courses/packet-tracer), but this game doesn't need that huge range of functionalities yet. So, it must have the following features:

- `Exit` button: to go back to the levels screen.
- `Reset` button: to reset the network to the initial state.
- `Test` button: to start the simulation.
- `Budget` label: to dynamically show the budget of the player in the format budgetSpent/totalBudget.

- `Objects` panel: to show the available devices and connections to the player, each object will have a label with the name and cost. They will be draggable to the network panel.

- `Network` panel: to show the network to the player.

The network will be displayed as a graph with the following features:

- Nodes: network devices.

- Edges: network connections.

- Node label: device name.

- Edge label: connection name.

- Node color: green if the device is connected to the network, red if it's not.

- Node tooltip: device cost.

- Edge tooltip: connection cost.

### Demo level

The demo level is to design a smart home network, the player is given a budget of 2500 USD$. The player is given the devices listed above. Again, this is just a demo to showcase the game features.

## Design Implementation

Given the course objectives listed at the beginning of this document, the objective is to demonstrate knowledge about graph theory, not to demonstrate knowledge about implementing GUI's or computer networks. Hence, I'll use [flutter framework](https://flutter.dev/) which will allow me to focus on the graph implementation and the algorithms used to solve the problem rather than on the GUI implementation.

First, it is necessary to implement the [graphs API](/packages/graphs/README.md) which will be used to model all graphs and algorithms implementations.

Then creating the UI and business logic listed in the [last section](#design-sketches) of this document will be a piece of cake.

I'll keep updating this section with the class diagram and the unit tests design.

