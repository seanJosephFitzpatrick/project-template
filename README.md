# Irish Constituencies Neo4j Database
###### Sean Fitzpatrick, G00294191

## Introduction
Give a summary here of what your project is about.

The project is a Graph Database representing the Parliamentary constituencies in the Republic of Ireland. The Candidates who ran in those Constiuencies. The parties the Candidates belong. The database is Neo4j database management system and is a NoSQL Graph Database.

**What is a Graph?**
*A graph is composed of two elements: a node and a relationship.        
Each node represents an entity (a person, place, thing, category or other piece of data), and each relationship represents how two nodes are associated. This general-purpose structure allows you to model all kinds of scenarios – from a system of roads, to a network of devices, to a population’s medical history or anything else defined by relationships.     

**What is a Graph Database?**
A graph database is an online database management system with Create, Read, Update and Delete (CRUD) operations working on a graph data model.      
[Why Graph Databaes][http://neo4j.com/why-graph-databases/]

**NoSQL** 
Not only SQL is a database that does not use the Relationship model.            
[No SQL databse : Overview][https://www.thoughtworks.com/insights/blog/nosql-databases-overview]


## Database
Explain how you created your database, and how information is represented in it.

**Creating Constituencies**
There are 40 nodes representing the Constituencies of Ireland. The CREATE clause is used to create multiple node, labels and properties.
The label on these group of nodes are Constituency. Each node contains 4 properties relating to each Constituency.
* Name : Idividual name of each Constituency.
* Population : The population of each Constituency.
* Seats : Available seats in each Constituency
* Boundry Area Description : Constituency boundry description.
````
CREATE	(	Carlow_Kilkenny	:	Constituency	{	name	:	"Carlow Kilkenny"	,	Population	:	145659	,	  Seats	:	5	,	Boundary_Areas_Description	:	"	The county of Kilkenny and the county of Carlow, except the part thereof which is comprised in the constituency of Wicklow.	"	}	)

````

**Creating Candidates**
There are 552 nodes representing Candidates that ran in the 2016 Election. The label on these group of nodes are Candidate. 
Each node contains five properties.
* Party : The name of the political party the candidate belongs.
* Constituency : The name of the constituency the candidate is associated with.
* Name : The name of the candidate.
* Final count : The final number of votes recieved by the candidate.
* Awarded seat : If the candidate won a seat

````
CREATE	(	David_Lloyd	:	Candidate	{	Party	:	"Direct Democracy"	,	Constituency	:	"Candidate_Wexford"	,	name	:	"David Lloyd"	,	FinalCount	:	128	,	AwardedSeat	:	"No"	}	)

````

**Creating Irish Political Parties**
There are 17 nodes representing Irish Political parties in Ireland. The label on these group of nodes are Irish_Political_Parties.
Nodes vary on properties depending on the party and if they have a leader. Most contain four properties.
* Party name : The name of the party.
* Leader : The name of the leader of the party.
* Translation : If party name in Irish then to English and vise versa.
* Founded : When the political party was founded.
````
CREATE	(	Fine_Gael	:	Irish_Political_Party	{	PartyName	:	"Fine Gael"	,	Leader	:	"Enda Kenny"	,	TranslationEnglishIrish	:	"Clan of the Gaels"	,	Founded	:	1933	}	)
````
[The CREATE clause is used to create graph elements — nodes and relationships.][http://neo4j.com/docs/stable/query-create.html]

**Creating the relationships**
The MATCH and CREATE clause are both used to create a relationship between two node. The MATCH claue finds the nodes based on names or the properties of a given node. When the nodes are matched the CREATE clause is used to create the relationship.         
There are two different kinds of relationships between the nodes in the database. The relationship between the candidates and the associated constituency and between the candidate and their associated party.            
* RAN_IN_ELECTION : Connects the candidate to the constituency associated with election.
Find all Candidate nodes with the property Constituency: Candidate_Clare, and all Constituency nodes with the property name: Clare. Create a relationship from the candidate node to the Constituency node RAN_IN_ELECTION.
````
MATCH	(a: Candidate {Constituency: "Candidate_Clare"}),	(b: Constituency	{name:	"Clare"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)
````
* Party_Member : Connects the candidate to the associated party.
Find Irish_Political_Party nodes with the property PartyName: Independent Alliance, and all Candidate nodes with the property Party: Independent Alliance. Create relationship from the Irish_Political_Party to Candidate Party_Member.
````
MATCH	(a: Irish_Political_Party {PartyName: "Independent Alliance"}),	(b: Candidate	{Party:	"Independent Alliance"}	)
CREATE	(a)-[:Party_Member]->(b)
````
[The MATCH clause is used to search for the pattern described in it.][http://neo4j.com/docs/stable/query-match.html]


## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query one title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query two title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query three title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.