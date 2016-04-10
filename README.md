# Irish Constituencies Neo4j Database
###### Sean Fitzpatrick, G00294191

## Introduction
Give a summary here of what your project is about.

The project is a Graph Database representing the Parliamentary constituencies in the Republic of Ireland. The Candidates who ran in those Constiuencies. The parties the Candidates belong.

## Database
Explain how you created your database, and how information is represented in it.

**Creating Constituencies**
There are 40 nodes representing the Constituencies of Ireland. The CREATE clause is used to create multiple node, labels and properties.
The labels on these nodes are the individual names of each Constituency. Each node contains 4 properties relating to each Constituency.
* Name : Idividual name of each Constituency.
* Population : The population of each Constituency.
* Seats : Available seats in each Constituency
* Boundry Area Description : Constituency boundry description.
````
CREATE	(	Carlow_Kilkenny	:	Constituency	{	name	:	"Carlow Kilkenny"	,	Population	:	145659	,	  Seats	:	5	,	Boundary_Areas_Description	:	"	The county of Kilkenny and the county of Carlow, except the part thereof which is comprised in the constituency of Wicklow.	"	}	)

````

**Creating Candidates**
There are 552 nodes representing Candidates that ran in the 2016 Election. The labels on these nodes are individual names of Candidats. 
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
There are 17 nodes representing Irish Political parties in Ireland. The labels on these nodes are the individual party names.
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
* RAN IN ELECTION : Connects the candidate to the constituency associated with election.
````
MATCH	(a: Candidate {Constituency: "Candidate_Clare"}),	(b: Constituency	{name:	"Clare"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)
````
* Party member : Connects the candidate to the associated party.
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