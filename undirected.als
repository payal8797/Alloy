module undirectedGraph

sig vertice
{
conn:set vertice
}

fact twoway
{
all v1,v2:vertice|v1 in v2.conn iff v2 in v1.conn
}
//twoarrow to represent undirected graph 

fact allWay
{
all v1,v2:vertice|v1 not in v2 iff v1 in v2.conn
}
//from every vertex there is path to every other vertex

fact noloop
{
all v:vertice | v not in v.conn
}

pred show{}
run show for 5



