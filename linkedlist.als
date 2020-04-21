one sig List { header: lone Node }
sig Node { link: lone Node }
pred acyclic (l : List){
all n : l.header.*link | n !in n.^link
}

fact{
List.header.*link = Node
}

run acyclic for 5
