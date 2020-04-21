sig node{
edge:set node}
one sig head extends node{}
one sig null extends node{}
fact {
all n:node-head| #edge.n=1
no edge.head
all n:node-null|#n.edge=1
no null.edge
no n:node| n in n.^edge
}

fun x:edge{
~edge
}
pred show{}
run show for 10

