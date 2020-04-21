sig node{}
sig List
{
nodes:set node,
head:one nodes,
last : one nodes,
link:nodes ->lone nodes
}
sig stack{
list: List,
top: node,
top=list.head 
}
pred pushing(beforelist,afterlist:stack,x:node)
{
x=afterlist.top  
(beforelist.list).link + x->(beforelist.top) =(afterlist.list).link 
(beforelist.list).nodes+x=(afterlist.list).nodes
}
run pushing for 5 node, 1 List, 1 stack

pred poping(beforelist,afterlist:stack,x:node){
    (beforelist.list).nodes-beforelist.top=(afterlist.list).nodes 
    (beforelist.list).link - (beforelist.top->x) = (afterlist.list).link 
    x in (beforelist.list).nodes
}
run poping for 5 node, 1 List,1 stack

