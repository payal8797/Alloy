module stack

abstract sig pointer
{
 incp:one pointer
}

one sig bottom extends pointer{}
one sig top extends pointer{}
sig	node extends pointer{} 

fact selfstay'
{

all p:pointer|p not in p.incp
}

fact bottomToTop
{
one b:bottom | one t: top | b not in t.incp
one b:bottom|one t:top|t in b.incp  implies #(pointer)=2
one p:pointer|one t:top|t in p.incp
//all p1,p2:pointer|one p:pointer|p1->p in incp iff p2->p not in incp
//no p1,p2,p3:pointer|p1 in p2.pointer and p1 in p3.pointer and p2!=p3
}

pred show{}


run show for 10 but exactly 6 pointer
