open util/relation
some sig Node { adjs: set Node }
pred acyclic() {
 adjs = ~adjs
}
fact {
  all n: Node | (n -> n) not in adjs
}
fact { all n: Node | n in dom[adjs] }

 	
run acyclic for 5 Node
