sig node{edge: set node}
one sig head extends node{}
one sig null extends node{}

pred doublylinkedlist{
all n:node | #n.edge=1
all n:node | (n->n) not in edge
first: head->edge
last: edge->null
//link=edge->edge
//link=link+ ~link
 }

run doublylinkedlist for 4
