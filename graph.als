open util/ordering[Nat]


/*sig Node {
  adj : set Node -- adjacency relation
}

fact {
  adj = ~adj -- the adjacency relation is symmetrical
  no iden & adj -- no loops
  all n : Node | Node in n.*adj -- the graph is connected
}
*/

sig Nat {}

sig Node {
 adj : set Node,
  dist : Node -> one Nat
}

fact {
  all n : Node | n.dist[n] = first
  all disj n,m : Node | n.dist[m] = min[n.adj.dist[m]].next
}

fun ecc [] : Node -> one Nat {
  { n : Node, d : Nat | d = max[n.dist[Node]] }
}

fun diam [] : one Nat {
  max[Node.ecc]
}

pred peripheral [n : Node] {
  n.ecc = diam
}

fun antipode [] : Node -> Node {
  { n, m : Node | n.dist[m] = n.ecc }
}

fun radius [] : one Nat {
  min[Node.ecc]
}

pred central [n : Node] {
  n.ecc = radius
}

check {
  all n : Node | some m : antipode[n] | peripheral[m]
}


