// This query retreives the number of leaf nodes within the graph database.


//Query 2
START n=node(*) 
MATCH n-[r*]->l
WHERE NOT(l-->()) 
RETURN DISTINCT LABELS(l) as Nodes, COUNT(l) as Number_Of_Leaf_Nodes;