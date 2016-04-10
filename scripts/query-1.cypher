// This query retreives the labels, nodes and relationships of a graph database. 
//It returns the distinct labels, nodes and relationships. A count is also returned.


//Query 1
START n=node(*)
MATCH n-[r]-()
RETURN DISTINCT LABELS(n) as labels, TYPE(r) as Relationship, n as node, COUNT(n) as nodes, count(r) as Number_of_Realtionships
ORDER BY Number_of_Realtionships desc