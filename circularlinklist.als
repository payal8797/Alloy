
one sig node1{ n1link: node2}
one sig node2{n2link: node3}
one sig node3{n3link:node4}
one sig node4{n4link:node5}
one sig node5{n5link:node6}
one sig node6{n7link:node1}

pred node1{
one n1:node1|one n2:node2|n2 in n1.n1link
}  
run node1 

pred node2{
one n2:node2|one n3:node3|n3 in n2.n2link
}  
run node2


pred node3{
one n3:node3|one n4:node4|n4 in n3.n3link
}  
run node3

pred node4{
one n4:node4|one n5:node5|n5 in n4.n4link
}  
run node4

pred node5{
one n5:node5|one n6:node6|n6 in n5.n5link
}  
run node5


pred node6to1{
one n6:node6|one n1:node1|n1 in n6.n7link
}  
run node6to1



















