//Node={Node0,Node1,...}
sig Node{edge: set Node}
one sig Root extends Node{}

pred binaryTree{
//Every node should have atmost 2 nodes
all n:Node | #n.edge=0 or #n.edge=1 or  #n.edge=2 
//Every node should have exactly 1 parent except for root
all n:Node-Root | #edge.n=1
no edge.Root
no n: Node | n in n.^edge
}

run binaryTree for 10
