# Irish Constituencies Neo4j Database

## Introduction

The project is a Graph Database representing the Parliamentary constituencies in the Republic of Ireland. The Candidates who ran in those Constiuencies. The parties the Candidates belong. The database is Neo4j database management system and is a NoSQL Graph Database.


## Database

**Creating Constituencies**
There are 40 nodes representing the Constituencies of Ireland. The CREATE clause is used to create multiple node, labels and properties.
The label on these group of nodes are Constituency. Each node contains 4 properties relating to each Constituency.
* Name : Idividual name of each Constituency.
* Population : The population of each Constituency.
* Seats : Available seats in each Constituency
* Boundry Area Description : Constituency boundry description.

```cypher
CREATE	(	Carlow_Kilkenny	:	Constituency	{	name	:	"Carlow Kilkenny"	,	Population	:	145659	,	  Seats	:	5	,	Boundary_Areas_Description	:	"	The county of Kilkenny and the county of Carlow, except the part thereof which is comprised in the constituency of Wicklow.	"	}	)
```

**Creating Candidates**
There are 552 nodes representing Candidates that ran in the 2016 Election. The label on these group of nodes are Candidate. 
Each node contains five properties.
* Party : The name of the political party the candidate belongs.
* Constituency : The name of the constituency the candidate is associated with.
* Name : The name of the candidate.
* Final count : The final number of votes recieved by the candidate.
* Awarded seat : If the candidate won a seat

```cypher
CREATE	(	David_Lloyd	:	Candidate	{	Party	:	"Direct Democracy"	,	Constituency	:	"Candidate_Wexford"	,	name	:	"David Lloyd"	,	FinalCount	:	128	,	AwardedSeat	:	"No"	}	)
```

**Creating Irish Political Parties**
There are 17 nodes representing Irish Political parties in Ireland. The label on these group of nodes are Irish_Political_Parties.
Nodes vary on properties depending on the party and if they have a leader. Most contain four properties.
* Party name : The name of the party.
* Leader : The name of the leader of the party.
* Translation : If party name in Irish then to English and vise versa.
* Founded : When the political party was founded.

```cypher
CREATE	(	Fine_Gael	:	Irish_Political_Party	{	PartyName	:	"Fine Gael"	,	Leader	:	"Enda Kenny"	,	TranslationEnglishIrish	:	"Clan of the Gaels"	,	Founded	:	1933	}	)
```
[The CREATE clause is used to create graph elements — nodes and relationships.][http://neo4j.com/docs/stable/query-create.html]

**Creating the relationships**
The MATCH and CREATE clause are both used to create a relationship between two node. The MATCH claue finds the nodes based on names or the properties of a given node. When the nodes are matched the CREATE clause is used to create the relationship.         
There are two different kinds of relationships between the nodes in the database. The relationship between the candidates and the associated constituency and between the candidate and their associated party.            
* RAN_IN_ELECTION : Connects the candidate to the constituency associated with election.
Find all Candidate nodes with the property Constituency: Candidate_Clare, and all Constituency nodes with the property name: Clare. Create a relationship from the candidate node to the Constituency node RAN_IN_ELECTION.

```cypher
MATCH	(a: Candidate {Constituency: "Candidate_Clare"}),	(b: Constituency	{name:	"Clare"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)
```
* Party_Member : Connects the candidate to the associated party.
Find Irish_Political_Party nodes with the property PartyName: Independent Alliance, and all Candidate nodes with the property Party: Independent Alliance. Create relationship from the Irish_Political_Party to Candidate Party_Member.

```cypher
MATCH	(a: Irish_Political_Party {PartyName: "Independent Alliance"}),	(b: Candidate	{Party:	"Independent Alliance"}	)
CREATE	(a)-[:Party_Member]->(b)
```
[The MATCH clause is used to search for the pattern described in it.][http://neo4j.com/docs/stable/query-match.html]


## Queries
1. Retrieve Nodes, Labels, Relationships.
2. Retrieve Leaf nodes.
3. Retrieve Number of votes for each Candidate.

#### Query one : Graph database 
This query retreives the labels, nodes and relationships of a graph database. It returns the distinct labels, nodes and relationships. A count is also returned.

[Basic Cypher Queris][http://www.remwebdevelopment.com/blog/sql/some-basic-and-useful-cypher-queries-for-neo4j-201.html]

```cypher
START n=node(*)
MATCH n-[r]-()
RETURN DISTINCT LABELS(n) as labels, TYPE(r) as Relationship, n as node, COUNT(n) as nodes, count(r) as Number_of_Realtionships
ORDER BY Number_of_Realtionships desc
```
[Asterisk: mathematical operator][http://neo4j.com/docs/stable/query-operators.html]

[COUNT: Aggregate function][http://neo4j.com/docs/stable/query-aggregation.html]

[LABELS: Collection function][http://neo4j.com/docs/stable/query-functions-collection.html]

[TYPE: Scalar function][http://neo4j.com/docs/stable/query-functions-scalar.html]

[START: Clause][http://neo4j.com/docs/stable/query-start.html]

[MATCH: Clause][http://neo4j.com/docs/stable/query-match.html]

[RETURN: Clause][http://neo4j.com/docs/stable/query-return.html]

[DISTINCT: Aggregate function][http://neo4j.com/docs/stable/query-aggregation.html]

[ORDER BY: Clause][http://neo4j.com/docs/stable/query-order.html]

#### Query two Leaf Nodes
This query retreives the number of leaf nodes within the graph database.

[Finding Leaf nodes Neo4j][http://stackoverflow.com/questions/13116363/finding-leaf-nodes-in-a-neo4j-database]

```cypher
START n=node(*) 
MATCH n-[r*]->l
WHERE NOT(l-->()) 
RETURN DISTINCT LABELS(l) as Nodes, COUNT(l) as Number_Of_Leaf_Nodes;
```
[START: Clause][http://neo4j.com/docs/stable/query-start.html]

[MATCH: Clause][http://neo4j.com/docs/stable/query-match.html]

[WHERE: Clause][http://neo4j.com/docs/stable/query-where.html]

[NOT: comparison operator][http://neo4j.com/docs/stable/query-operators.html]

[RETURN: Clause][http://neo4j.com/docs/stable/query-return.html]

[DISTINCT: Aggregate function][http://neo4j.com/docs/stable/query-aggregation.html]

[LABELS: Collection function][http://neo4j.com/docs/stable/query-functions-collection.html]

[COUNT: Aggregate function][http://neo4j.com/docs/stable/query-aggregation.html]

#### Query three Return Votes
This query retreives the property name and FinalCount from the Candidate nodes and converts the String value FinalCount to an Integer value. The value FinalCount are returned in descending order. The property value FinalCount represents the final numbers of votes recieved by the candidate.

[Neo4j Cypher - String to Integer: stachoverflow][http://stackoverflow.com/questions/22220732/neo4j-cypher-string-to-integer]

[Cypher Neo4j ORDER BY DESC query: stachoverflow][http://stackoverflow.com/questions/26341916/cypher-neo4j-order-by-desc-query]

```cypher
MATCH (n:Candidate)
RETURN COLLECT(n.name) as Candidate,(n.FinalCount) as Votes
ORDER BY TOINT(n.FinalCount) desc
```

[MATCH: Clause][http://neo4j.com/docs/stable/query-match.html]

[RETURN: Clause][http://neo4j.com/docs/stable/query-return.html]

[COLLECT: Aggregate function][http://neo4j.com/docs/stable/query-aggregation.html]

[ORDER BY: Clause][http://neo4j.com/docs/stable/query-order.html]

[TOINT: Scalar function][http://neo4j.com/docs/stable/query-functions-scalar.html]

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. [Constituencies Republic of Ireland](https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland), wikipedia - Candidates can be accessed here by Constituency.
3. [Irish Political Parties](https://en.wikipedia.org/wiki/List_of_political_parties_in_the_Republic_of_Ireland), wikipedia - Irish Political Parties. 
